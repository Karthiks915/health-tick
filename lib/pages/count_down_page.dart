import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_tick/components/count_down_timer.dart';
import 'package:health_tick/state/timer_logic_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// We use riverpod to control the state of the timer

class TimerControlPage extends ConsumerWidget {
  const TimerControlPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(timerProvider);
    final isSoundEnabled = ref.watch(soundEnabledProvider);

    void toggleSound(bool value) {
      ref.read(soundEnabledProvider.notifier).state = value;
      ref.read(timerProvider.notifier).playSound();
    }

    return Scaffold(
      backgroundColor: const Color(0xFF191726),
      appBar: AppBar(
        backgroundColor: const Color(0xFF191726),
        title: Text(
          'MindFul Meal Timer',
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            buildPageIndicator(timerState.pageNumber, 3),
            const SizedBox(height: 30),
            Text(
              timerState.title,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(height: 30),
            Text(timerState.description,
                style: TextStyle(color: Colors.grey[500], fontSize: 16)),
            const SizedBox(height: 30),
            const Spacer(),
            const Expanded(child: CountdownTimerWidget()),
            const SizedBox(height: 30),
            const Spacer(),
            CupertinoSwitch(
              value: isSoundEnabled,
              onChanged: toggleSound,
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB1C3B8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () => ref.read(timerProvider.notifier).toggleTimer(),
                child: Text(
                  timerState.isRunning ? 'Resume' : 'Start',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB1C3B8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  //Implement stop functionality if needed
                },
                child: const Text(
                  'Let us stop I am full',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }

  Widget buildPageIndicator(int currentPage, int totalPages) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return Container(
          width: currentPage == index ? 18 : 10,
          height: currentPage == index ? 18 : 10,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }
}
