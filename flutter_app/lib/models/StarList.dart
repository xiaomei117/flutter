import 'package:flutter_app/models/star.dart';
import 'package:json_annotation/json_annotation.dart';
part 'StarList.g.dart';

@JsonSerializable()

class Star {
  String userId;
  String name;
  String bio;
  String about;
  String avatar;
  String identify;
  double approved;
  String orderInstruction;
  List<AvailableService> availableService;
  double accuracy;
  double accuracyCount;
  double rate;
  double liveStatus;
  double workStatus;
  double firstApprovedAt;
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