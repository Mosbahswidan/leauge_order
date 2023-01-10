import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leauge_order/core/utils/app_routers.dart';
import 'package:leauge_order/feature/home/presentation/views/home_view.dart';
import 'package:leauge_order/feature/home/presentation/views/order_table.dart';

import 'core/utils/observer.dart';
import 'core/utils/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  setUp();
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: Observer(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
    );
  }
}
