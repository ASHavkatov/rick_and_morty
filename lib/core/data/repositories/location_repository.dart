import 'package:rick_and_morty/core/client.dart';
import 'package:rick_and_morty/core/data/models/location_models/location_model.dart';

class LocationRepository{
  final ApiClient client;
  LocationRepository({required this.client});
  Future<LocationModel>fetchLocation()async{
    final rawLocation = await client.fetchLocation();
    final detail = LocationModel.fromJson(rawLocation);
    return detail;
  }
}