import 'package:dartz/dartz.dart';
import 'package:leauge_order/feature/home/data/repos/TeemModel.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<TeamModel>>> fetchStandings(
      {required String leauge});
}
