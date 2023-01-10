import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'http://api-football-standings.azharimm.dev/leagues/';
  final Dio dio;
  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
