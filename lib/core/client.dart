import 'package:dio/dio.dart';

class ApiClient {
  final dio = Dio(BaseOptions(baseUrl: "https://rickandmortyapi.com/api"));

  Future<dynamic> fetchCharacter() async {
    final response = await dio.get("/character");
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Character ni olib kelishda hatolik bor");
    }
  }
  Future<dynamic>fetchLocation()async{
    final response = await dio.get("/location");
    if (response.statusCode == 200) {
      return response.data;
    }  else{
      throw Exception("Location ni olib kelishda hatolik bor");
    }
  }

  Future<dynamic>fetchEpisode(int id)async{
    final response = await dio.get("/episode/$id");
    if (response.statusCode == 200) {
      return response.data;
    }  else{
      throw Exception("Episode ni olib kelishda hatolik bor");
    }
  }
  Future<dynamic>fetchDetail(int id)async{
    final response =await dio.get("/character/$id");
    if (response.statusCode == 200) {
      return response.data;
    }  else{
      throw Exception("Detail ni olib kelishda hatolik bor");
    }
  }
}
