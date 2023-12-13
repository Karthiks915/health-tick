// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageTimerState _$PageTimerStateFromJson(Map<String, dynamic> json) {
  return _PageTimerState.fromJson(json);
}

/// @nodoc
mixin _$PageTimerState {
  int get remainingTime => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  bool get isSoundEnabled => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get initialTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageTimerStateCopyWith<PageTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageTimerStateCopyWith<$Res> {
  factory $PageTimerStateCopyWith(
          PageTimerState value, $Res Function(PageTimerState) then) =
      _$PageTimerStateCopyWithImpl<$Res, PageTimerState>;
  @useResult
  $Res call(
      {int remainingTime,
      bool isRunning,
      bool isSoundEnabled,
      String title,
      String description,
      int pageNumber,
      int initialTime});
}

/// @nodoc
class _$PageTimerStateCopyWithImpl<$Res, $Val extends PageTimerState>
    implements $PageTimerStateCopyWith<$Res> {
  _$PageTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingTime = null,
    Object? isRunning = null,
    Object? isSoundEnabled = null,
    Object? title = null,
    Object? description = null,
    Object? pageNumber = null,
    Object? initialTime = null,
  }) {
    return _then(_value.copyWith(
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoundEnabled: null == isSoundEnabled
          ? _value.isSoundEnabled
          : isSoundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      initialTime: null == initialTime
          ? _value.initialTime
          : initialTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageTimerStateImplCopyWith<$Res>
    implements $PageTimerStateCopyWith<$Res> {
  factory _$$PageTimerStateImplCopyWith(_$PageTimerStateImpl value,
          $Res Function(_$PageTimerStateImpl) then) =
      __$$PageTimerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int remainingTime,
      bool isRunning,
      bool isSoundEnabled,
      String title,
      String description,
      int pageNumber,
      int initialTime});
}

/// @nodoc
class __$$PageTimerStateImplCopyWithImpl<$Res>
    extends _$PageTimerStateCopyWithImpl<$Res, _$PageTimerStateImpl>
    implements _$$PageTimerStateImplCopyWith<$Res> {
  __$$PageTimerStateImplCopyWithImpl(
      _$PageTimerStateImpl _value, $Res Function(_$PageTimerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingTime = null,
    Object? isRunning = null,
    Object? isSoundEnabled = null,
    Object? title = null,
    Object? description = null,
    Object? pageNumber = null,
    Object? initialTime = null,
  }) {
    return _then(_$PageTimerStateImpl(
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoundEnabled: null == isSoundEnabled
          ? _value.isSoundEnabled
          : isSoundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      initialTime: null == initialTime
          ? _value.initialTime
          : initialTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageTimerStateImpl implements _PageTimerState {
  _$PageTimerStateImpl(
      {required this.remainingTime,
      this.isRunning = false,
      this.isSoundEnabled = false,
      required this.title,
      required this.description,
      required this.pageNumber,
      required this.initialTime});

  factory _$PageTimerStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageTimerStateImplFromJson(json);

  @override
  final int remainingTime;
  @override
  @JsonKey()
  final bool isRunning;
  @override
  @JsonKey()
  final bool isSoundEnabled;
  @override
  final String title;
  @override
  final String description;
  @override
  final int pageNumber;
  @override
  final int initialTime;

  @override
  String toString() {
    return 'PageTimerState(remainingTime: $remainingTime, isRunning: $isRunning, isSoundEnabled: $isSoundEnabled, title: $title, description: $description, pageNumber: $pageNumber, initialTime: $initialTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageTimerStateImpl &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.isSoundEnabled, isSoundEnabled) ||
                other.isSoundEnabled == isSoundEnabled) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.initialTime, initialTime) ||
                other.initialTime == initialTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, remainingTime, isRunning,
      isSoundEnabled, title, description, pageNumber, initialTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageTimerStateImplCopyWith<_$PageTimerStateImpl> get copyWith =>
      __$$PageTimerStateImplCopyWithImpl<_$PageTimerStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageTimerStateImplToJson(
      this,
    );
  }
}

abstract class _PageTimerState implements PageTimerState {
  factory _PageTimerState(
      {required final int remainingTime,
      final bool isRunning,
      final bool isSoundEnabled,
      required final String title,
      required final String description,
      required final int pageNumber,
      required final int initialTime}) = _$PageTimerStateImpl;

  factory _PageTimerState.fromJson(Map<String, dynamic> json) =
      _$PageTimerStateImpl.fromJson;

  @override
  int get remainingTime;
  @override
  bool get isRunning;
  @override
  bool get isSoundEnabled;
  @override
  String get title;
  @override
  String get description;
  @override
  int get pageNumber;
  @override
  int get initialTime;
  @override
  @JsonKey(ignore: true)
  _$$PageTimerStateImplCopyWith<_$PageTimerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
