import 'package:flutter_app/models/available_service.dart';
import 'package:json_annotation/json_annotation.dart';
part 'star.g.dart';

@JsonSerializable()
class Star {
  @JsonKey(defaultValue: '')
  String userId;
  @JsonKey(defaultValue: '')
  String name;
  @JsonKey(defaultValue: '')
  String bio;
  @JsonKey(defaultValue: '')
  String about;
  @JsonKey(defaultValue: '')
  String avatar;
  @JsonKey(defaultValue: '')
  String identify;
  @JsonKey(defaultValue: 0.0)
  double approved;
  @JsonKey(defaultValue: '')
  String orderInstruction;
  @JsonKey(defaultValue: [])
  List<AvailableService> availableService;
  @JsonKey(defaultValue: 0.0)
  double accuracy;
  @JsonKey(defaultValue: 0)
  int accuracyCount;
  @JsonKey(defaultValue: 0.0)
  double rate;
  @JsonKey(defaultValue: 0)
  int liveStatus;
  @JsonKey(defaultValue: 0)
  int workStatus;
  @JsonKey(defaultValue: 0.0)
  double firstApprovedAt;
  @JsonKey(defaultValue: '')
  String featureCover;

  Star(
      {this.userId,
        this.name,
        this.bio,
        this.about,
        this.avatar,
        this.identify,
        this.approved,
        this.orderInstruction,
        this.availableService,
        this.accuracy,
        this.accuracyCount,
        this.rate,
        this.liveStatus,
        this.workStatus,
        this.firstApprovedAt,
        this.featureCover});
  factory Star.fromJson(Map<String, dynamic> json) => _$StarFromJson(json);
  Map<String, dynamic> toJson() => _$StarToJson(this);

}