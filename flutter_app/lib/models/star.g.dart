// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Star _$StarFromJson(Map<String, dynamic> json) {
  return Star(
    userId: json['userId'] as String,
    name: json['name'] as String,
    bio: json['bio'] as String,
    about: json['about'] as String,
    avatar: json['avatar'] as String,
    identify: json['identify'] as String,
    approved: (json['approved'] as num)?.toDouble(),
    orderInstruction: json['orderInstruction'] as String,
    availableService: (json['availableService'] as List)
        ?.map((e) => e == null
            ? null
            : AvailableService.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    accuracy: (json['accuracy'] as num)?.toDouble(),
    accuracyCount: (json['accuracyCount'] as num)?.toInt(),
    rate: (json['rate'] as num)?.toDouble(),
    liveStatus: (json['liveStatus'] as num)?.toInt(),
    workStatus: (json['workStatus'] as num)?.toInt(),
    firstApprovedAt: (json['firstApprovedAt'] as num)?.toDouble(),
    featureCover: json['featureCover'] as String,
  );
}

Map<String, dynamic> _$StarToJson(Star instance) => <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'bio': instance.bio,
      'about': instance.about,
      'avatar': instance.avatar,
      'identify': instance.identify,
      'approved': instance.approved,
      'orderInstruction': instance.orderInstruction,
      'availableService': instance.availableService,
      'accuracy': instance.accuracy,
      'accuracyCount': instance.accuracyCount,
      'rate': instance.rate,
      'liveStatus': instance.liveStatus,
      'workStatus': instance.workStatus,
      'firstApprovedAt': instance.firstApprovedAt,
      'featureCover': instance.featureCover,
    };
