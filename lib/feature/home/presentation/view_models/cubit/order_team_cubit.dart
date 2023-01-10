import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/TeemModel.dart';
import '../../../data/repos/home_repo.dart';

part 'order_team_state.dart';

class OrderTeamCubit extends Cubit<OrderTeamState> {
  OrderTeamCubit(this.homeRepo) : super(OrderTeamInitial());
  final HomeRepo homeRepo;

  Future<void> fetchOrderTeam({required String leuge}) async {
    emit(OrderTeamLoading());
    var result = await homeRepo.fetchStandings(leauge: leuge);
    result.fold((l) {
      emit(OrderTeamFailure(errorMessage: l.errorMessage));
    }, (r) {
      emit(OrderTeamSuccess(model: r));
    });
  }
}
