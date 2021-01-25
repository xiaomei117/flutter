// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableService _$AvailableServiceFromJson(Map<String, dynamic> json) {
  return AvailableService(
    type: (json['type'] as num)?.toDouble(),
    price: (json['price'] as num)?.toDouble(),
    canRush: json['canRush'] as bool,
    availableHours: (json['availableHours'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$AvailableServiceToJson(AvailableService instance) =>
    <String, dynamic>{
      'type': instance.type,
      'price': instance.price,
      'canRush': instance.canRush,
      'availableHours': instance.availableHours,
    };
