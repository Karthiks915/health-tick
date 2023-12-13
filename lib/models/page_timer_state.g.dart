// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_timer_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageTimerStateImpl _$$PageTimerStateImplFromJson(Map<String, dynamic> json) =>
    _$PageTimerStateImpl(
      remainingTime: json['remainingTime'] as int,
      isRunning: json['isRunning'] as bool? ?? false,
      isSoundEnabled: json['isSoundEnabled'] as bool? ?? false,
      title: json['title'] as String,
      description: json['description'] as String,
      pageNumber: json['pageNumber'] as int,
      initialTime: json['initialTime'] as int,
    );

Map<String, dynamic> _$$PageTimerStateImplToJson(
        _$PageTimerStateImpl instance) =>
    <String, dynamic>{
      'remainingTime': instance.remainingTime,
      'isRunning': instance.isRunning,
      'isSoundEnabled': instance.isSoundEnabled,
      'title': instance.title,
      'description': instance.description,
      'pageNumber': instance.pageNumber,
      'initialTime': instance.initialTime,
    };
