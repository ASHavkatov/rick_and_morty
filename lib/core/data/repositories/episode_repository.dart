import 'package:rick_and_morty/core/client.dart';
import 'package:rick_and_morty/core/data/models/episode_models/episode_result_model.dart';

class EpisodeRepository{
  final ApiClient client;
  EpisodeRepository({required this.client});

  Future<EpisodeResultModel>fetchEpisode(int id)async{
    final rawEpisode = await client.fetchEpisode(id);
    final detail = EpisodeResultModel.fromJson(rawEpisode);
    return detail;
  }
}