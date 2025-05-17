import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_result_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 6)
class LocationResultModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String type;
  @HiveField(3)
  final String dimension;
  @HiveField(4)
  final List<String> residents;
  @HiveField(5)
  final String url;
  @HiveField(6)
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
