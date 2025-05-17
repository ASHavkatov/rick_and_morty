import 'package:hive/hive.dart';

import 'character_models/character_model.dart';
import 'character_models/character_result_model.dart';
import 'character_models/location_character_model.dart';
import 'character_models/origin_model.dart';
import 'episode_models/episode_model.dart';
import 'episode_models/episode_result_model.dart';
import 'info_model/info_model.dart';
import 'location_models/location_model.dart';
import 'location_models/location_result_model.dart';

class EpisodeModelAdapter extends TypeAdapter<EpisodeModel> {
  @override
  int get typeId => 1;

  @override
  EpisodeModel read(BinaryReader reader) {
    final info = reader.read() as InfoModel;
    final results = (reader.read() as List).cast<EpisodeResultModel>();
    return EpisodeModel(info: info, result: results);
  }

  @override
  void write(BinaryWriter writer, EpisodeModel obj) {
    writer.write(obj.info);
    writer.write(obj.result);
  }
}

class CharacterModelAdapter extends TypeAdapter<CharacterModel> {
  @override
  int get typeId => 2;

  @override
  CharacterModel read(BinaryReader reader) {
    final info =reader.read()as InfoModel;
    final rawList=reader.read()as List;
    final result=rawList.map((e)=>e as CharacterResultModel).toList();
    return CharacterModel(info: info, results: result);

  }

  @override
  void write(BinaryWriter writer, CharacterModel obj) {
    writer.write(obj.info);
    writer.write(obj.results);
  }
}

class EpisodeResultModelAdapter extends TypeAdapter<EpisodeResultModel> {
  @override
  int get typeId => 3;

  @override
  EpisodeResultModel read(BinaryReader reader) {
    return EpisodeResultModel(
      id: reader.read() as int,
      name: reader.read() as String,
      airDate: reader.read() as String,
      episode: reader.read() as String,
      characters: (reader.read() as List).cast<String>(),
      url: reader.read() as String,
      created: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, EpisodeResultModel obj) {
    writer.write(obj.id);
    writer.write(obj.name);
    writer.write(obj.airDate);
    writer.write(obj.episode);
    writer.write(obj.characters);
    writer.write(obj.url);
    writer.write(obj.created);
  }
}

class InfoModelAdapter extends TypeAdapter<InfoModel> {
  @override
  int get typeId => 4;

  @override
  InfoModel read(BinaryReader reader) {
    return InfoModel(
      count: reader.read() ,
      pages: reader.read() ,
      next: reader.read() ,
      prev: reader.read() ,
    );
  }

  @override
  void write(BinaryWriter writer, InfoModel obj) {
    writer.write(obj.count);
    writer.write(obj.pages);
    writer.write(obj.next);
    writer.write(obj.prev);
  }
}

class LocationModelAdapter extends TypeAdapter<LocationModel> {
  @override
  int get typeId => 5;

  @override
  LocationModel read(BinaryReader reader) {
    return LocationModel(
      info: reader.read() as InfoModel,
      result: (reader.read() as List).cast<LocationResultModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, LocationModel obj) {
    writer.write(obj.info);
    writer.write(obj.result);
  }
}

class LocationResultModelAdapter extends TypeAdapter<LocationResultModel> {
  @override
  int get typeId => 6;

  @override
  LocationResultModel read(BinaryReader reader) {
    return LocationResultModel(
      id: reader.read() as int,
      name: reader.read() as String,
      type: reader.read() as String,
      dimension: reader.read() as String,
      residents: (reader.read() as List).cast<String>(),
      url: reader.read() as String,
      created: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, LocationResultModel obj) {
    writer.write(obj.id);
    writer.write(obj.name);
    writer.write(obj.type);
    writer.write(obj.dimension);
    writer.write(obj.residents);
    writer.write(obj.url);
    writer.write(obj.created);
  }
}

class CharacterResultModelAdapter extends TypeAdapter<CharacterResultModel> {
  @override
  int get typeId => 8;

  @override
  CharacterResultModel read(BinaryReader reader) {
    return CharacterResultModel(
      id: reader.read() as int,
      name: reader.read() as String,
      status: reader.read() as String,
      species: reader.read() as String,
      type: reader.read() as String,
      gender: reader.read() as String,
      origin: reader.read() as OriginModel,
      location: reader.read() as LocationCharacterModel,
      episode: (reader.read() as List).cast<String>(),
      url: reader.read() as String,
      created: reader.read() as String,
      image: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterResultModel obj) {
    writer.write(obj.id);
    writer.write(obj.name);
    writer.write(obj.status);
    writer.write(obj.species);
    writer.write(obj.type);
    writer.write(obj.gender);
    writer.write(obj.origin);
    writer.write(obj.location);
    writer.write(obj.episode);
    writer.write(obj.url);
    writer.write(obj.created);
    writer.write(obj.image);
  }
}

class LocationCharacterModelAdapter
    extends TypeAdapter<LocationCharacterModel> {
  @override
  final int typeId = 9;

  @override
  LocationCharacterModel read(BinaryReader reader) {
    final name = reader.read() as String;
    final url = reader.read() as String;
    return LocationCharacterModel(name: name, url: url);
  }

  @override
  void write(BinaryWriter writer, LocationCharacterModel obj) {
    writer.write(obj.name);
    writer.write(obj.url);
  }
}

class OriginModelAdapter extends TypeAdapter<OriginModel> {
  @override
  final int typeId = 10;

  @override
  OriginModel read(BinaryReader reader) {
    final name = reader.read() as String;
    final url = reader.read() as String;
    return OriginModel(name: name, url: url);
  }

  @override
  void write(BinaryWriter writer, OriginModel obj) {
    writer.write(obj.name);
    writer.write(obj.url);
  }
}
