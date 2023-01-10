part of 'order_team_cubit.dart';

abstract class OrderTeamState extends Equatable {
  const OrderTeamState();

  @override
  List<Object> get props => [];
}

class OrderTeamInitial extends OrderTeamState {}

class OrderTeamLoading extends OrderTeamState {}

class OrderTeamSuccess extends OrderTeamState {
  final List<TeamModel> model;

  const OrderTeamSuccess({required this.model});
}

class OrderTeamFailure extends OrderTeamState {
  final String errorMessage;

  const OrderTeamFailure({required this.errorMessage});
}
