import 'package:json_annotation/json_annotation.dart';

part 'location_result_model.g.dart';

@JsonSerializable()
class LocationResultModel {
  final int id;
  final String name;
  final String type;
  final String dimension;
  final List<String> residents;
  final String url;
  final String created;

  LocationResultModel({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.created,
    required this.url,
  });

  factory LocationResultModel.fromJson(Map<String, dynamic> json) =>
      _$LocationResultModelFromJson(json);
}
