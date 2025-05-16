import 'package:rick_and_morty/core/client.dart';
import 'package:rick_and_morty/core/data/models/episode_models/episode_model.dart';

class EpisodeRepository{
  final ApiClient client;
  EpisodeRepository({required this.client});

  Future<EpisodeModel>fetchEpisode()async{
    final rawEpisode = await client.fetchEpisode();
    final detail = EpisodeModel.fromJson(rawEpisode);
    return detail;
  }
}