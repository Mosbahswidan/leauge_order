import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:leauge_order/core/utils/api_services.dart';
import 'package:leauge_order/core/utils/service_locator.dart';
import 'package:leauge_order/feature/home/data/repos/home_repo_impl.dart';
import 'package:leauge_order/feature/home/presentation/views/home_view.dart';
import 'package:leauge_order/feature/home/presentation/views/order_table.dart';

import '../../feature/home/presentation/view_models/cubit/order_team_cubit.dart';

abstract class AppRouter {
  static const kOrderTable = "/orderTable";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kOrderTable,
        builder: (context, state) => BlocProvider(
          create: (context) => OrderTeamCubit(HomeRepoImpl(ApiServices(Dio())))
            ..fetchOrderTeam(leuge: state.extra as String),
          child: OrderTable(name: state.extra as String),
        ),
      ),
    ],
  );
}
