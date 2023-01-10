import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:leauge_order/core/utils/api_services.dart';
import 'package:leauge_order/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:leauge_order/feature/home/data/repos/TeemModel.dart';
import 'package:leauge_order/feature/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<TeamModel>>> fetchStandings(
      {required String leauge}) async {
    try {
      var data = await apiServices.get(
          endPoint: "$leauge/standings?season=2022&sort=asc");
      List<TeamModel> teams = [];
      //TeemModel model = TeemModel.fromJson(data);
      // print(jsonEncode(model.data!.standings![0]));
      // print(data['data']['standings'][0]);
      for (var item in data['data']['standings']) {
        try {
          //   TeemModel model = TeemModel.fromJson(item);
          // print(model.team!.displayName);
          teams.add(TeamModel.fromJson(item));
          //print("truee");
        } catch (e) {
          teams.add(TeamModel.fromJson(item));
        }
      }

      //print(teams);
      return right(teams);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
