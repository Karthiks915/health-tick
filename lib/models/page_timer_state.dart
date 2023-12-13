import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_timer_state.freezed.dart';
part 'page_timer_state.g.dart';


//I Figured passing in an object to simulate page change would be better than rewriting code

@freezed
class PageTimerState with _$PageTimerState {

  factory PageTimerState({
    required int remainingTime,
    @Default(false) bool isRunning,
     @Default(false) bool isSoundEnabled,
    required String title,
    required String description,
    required int pageNumber,
    required int initialTime,

  }) = _PageTimerState;

  factory PageTimerState.fromJson(Map<String, dynamic> json) => _$PageTimerStateFromJson(json);
}



