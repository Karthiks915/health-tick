import 'dart:async';
import 'package:health_tick/models/page_timer_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:audioplayers/audioplayers.dart';


//All logic in a single place, should upgrate to Riverpod 2.0 but low on time so just did this.

final soundEnabledProvider = StateProvider<bool>((_) => false);

class TimerNotifier extends StateNotifier<PageTimerState> {
  Timer? _timer;
  final AudioPlayer audioPlayer = AudioPlayer();
  TimerNotifier()
      : super(PageTimerState(
            remainingTime: 10,
            title: 'Nom nom :)',
            description:
                'You have 10 minutes to eat before the pause. Focus on eating slowly',
            pageNumber: 0,
            initialTime: 10,
            isSoundEnabled: true));

  void startTimer() {
    if (_timer != null) return;
    state = state.copyWith(isRunning: true);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (state.remainingTime > 0) {
        state = state.copyWith(remainingTime: state.remainingTime - 1);
      } else {
        _timer?.cancel();
        // Transition to the next page
        _transitionToNextPage();
      }
    });
  }

  Future<void> playSound() async {
    if (state.isSoundEnabled && state.remainingTime <= 5) {
      await audioPlayer.play(AssetSource('countdown_tick.mp3'));
    }
  }

  void toggleTimer() {
    if (state.isRunning) {
      _timer?.cancel();
      audioPlayer.pause();
    } else {
      _timer = Timer.periodic(const Duration(seconds: 1), (_) async {
        if (state.remainingTime > 0) {
          state = state.copyWith(remainingTime: state.remainingTime - 1);
          playSound();
        } else {
          _timer?.cancel();
          audioPlayer.stop();
          _transitionToNextPage();
        }
      });
    }
    state = state.copyWith(isRunning: !state.isRunning);
  }

  void _transitionToNextPage() {
    final nextPageNumber = (state.pageNumber + 1) % 3;

    var newState = PageTimerState(
      remainingTime: state.initialTime,
      title: state.title,
      description: state.description,
      pageNumber: state.pageNumber,
      initialTime: state.initialTime,
    );

    switch (nextPageNumber) {
      case 0:
        newState = PageTimerState(
          remainingTime: 10,
          title:
              'You have 10 minutes to eat before the pause. Focus on eating slowly',
          description: 'New Description for Page 1',
          pageNumber: nextPageNumber,
          initialTime: 10,
        );
        break;
      case 1:
        newState = PageTimerState(
          remainingTime: 10,
          title: 'New Title for Page 2',
          description: 'New Description for Page 2',
          pageNumber: nextPageNumber,
          initialTime: 10,
        );
        break;
      case 2:
        newState = PageTimerState(
          remainingTime: 10,
          title: 'New Title for Page 3',
          description: 'New Description for Page 3',
          pageNumber: nextPageNumber,
          initialTime: 10,
        );
        break;
    }

    state = newState;
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

final timerProvider =
    StateNotifierProvider<TimerNotifier, PageTimerState>((ref) {
  return TimerNotifier();
});
