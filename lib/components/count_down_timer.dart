import 'package:flutter/material.dart';
import 'package:health_tick/state/timer_logic_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;


//Ideally I thought of using a package, however figured I would give custompainter a try, used tools online to get the perfect arc that I needed.

class CountdownTimerWidget extends ConsumerWidget {
  const CountdownTimerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(timerProvider);
    final progress = timerState.remainingTime / timerState.initialTime;
    final minutes = timerState.remainingTime ~/ 60;
    final seconds = timerState.remainingTime % 60;

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            painter: DialPainter(
              progress: progress,
              totalSeconds: timerState.initialTime,
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
            ),
            child: const SizedBox(
              width: 200,
              height: 200,
            ),
          ),
          Text(
            '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DialPainter extends CustomPainter {
  final double progress;
  final int totalSeconds;
  final double majorTickMarkLength;
  final double minorTickMarkLength;
  final double tickMarkWidth;
  final double progressStrokeWidth;
  final Color activeColor;
  final Color inactiveColor;

  DialPainter({
    required this.progress,
    this.totalSeconds = 60,
    this.majorTickMarkLength = 14.0,
    this.minorTickMarkLength = 10.0,
    this.tickMarkWidth = 2.0,
    this.progressStrokeWidth = 15.0,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2;

    drawBackground(canvas, center, radius);

    drawProgressArc(canvas, center, radius);

    drawTickMarks(canvas, center, radius - progressStrokeWidth);
  }

  void drawBackground(Canvas canvas, Offset center, double radius) {
    Paint backgroundPaint = Paint()
      ..color = inactiveColor.withOpacity(0.3)
      ..strokeWidth = progressStrokeWidth
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      center,
      radius - progressStrokeWidth / 2,
      backgroundPaint,
    );
  }

  void drawProgressArc(Canvas canvas, Offset center, double radius) {
    Paint progressPaint = Paint()
      ..color = activeColor
      ..strokeWidth = progressStrokeWidth
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    double angle = 2 * math.pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - progressStrokeWidth / 2),
      -math.pi / 2,
      angle,
      false,
      progressPaint,
    );
  }

  void drawTickMarks(Canvas canvas, Offset center, double radius) {
    for (int i = 0; i < totalSeconds; i++) {
      final angle = (2 * math.pi * i) / totalSeconds - math.pi / 2;
      final length = (i % 15 == 0) ? majorTickMarkLength : minorTickMarkLength;
      final startTick =
          center + Offset(math.cos(angle), math.sin(angle)) * (radius - length);
      final endTick =
          center + Offset(math.cos(angle), math.sin(angle)) * radius;

      Paint tickPaint = Paint()
        ..color = (progress > i / totalSeconds)
            ? activeColor
            : inactiveColor.withOpacity(0.3)
        ..strokeWidth = tickMarkWidth
        ..style = PaintingStyle.stroke;

      canvas.drawLine(startTick, endTick, tickPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
