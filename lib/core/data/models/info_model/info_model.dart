import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_model.g.dart';

@JsonSerializable()

class InfoModel {

  final int count;


  final int pages;


  final String? next;


  final String? prev;

  InfoModel({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
}



