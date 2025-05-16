import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/core/data/models/info_model/info_model.dart';
import 'package:rick_and_morty/core/data/models/location_models/location_result_model.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  final InfoModel info;
  final List<LocationResultModel> result;

  LocationModel({required this.info, required this.result});

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
