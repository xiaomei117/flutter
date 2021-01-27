
import 'package:json_annotation/json_annotation.dart';
//part 'AvailableService.g.dart';
part 'availableservice.g.dart';
@JsonSerializable()
class AvailableService {
  @JsonKey(defaultValue: 0)
  int type;
  @JsonKey(defaultValue: 0.0)
  double price;
  @JsonKey(defaultValue: false)
  bool canRush;
  @JsonKey(defaultValue: 0.0)
  double availableHours;

  AvailableService({this.type, this.price, this.canRush, this.availableHours});


  factory AvailableService.fromJson(Map<String, dynamic> json) => _$AvailableServiceFromJson(json);
  Map<String, dynamic> toJson() => _$AvailableServiceToJson(this);
}

