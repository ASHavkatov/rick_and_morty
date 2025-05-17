class EpisodeEvent{}

class EpisodeLoading extends EpisodeEvent{
  final int id;
  EpisodeLoading({required this.id});
}