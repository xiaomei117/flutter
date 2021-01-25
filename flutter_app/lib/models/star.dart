
import 'package:json_annotation/json_annotation.dart';
//part 'AvailableService.g.dart';
part 'star.g.dart';
@JsonSerializable()


class AvailableService {
  double type;
  double price;
  bool canRush;
  double availableHours;

  AvailableService({this.type, this.price, this.canRush, this.availableHours});


  factory AvailableService.fromJson(Map<String, dynamic> json) => _$AvailableServiceFromJson(json);
  Map<String, dynamic> toJson() => _$AvailableServiceToJson(this);
}

