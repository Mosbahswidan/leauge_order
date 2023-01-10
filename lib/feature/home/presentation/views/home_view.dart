import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:leauge_order/core/utils/app_routers.dart';
import 'package:leauge_order/feature/home/presentation/views/order_table.dart';

import '../../../../core/utils/app_assets.dart';
import 'widgets/leauge_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xffe84860),
              Color(0xffe70066),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Competitions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    GestureDetector(
                      child:
                          const LeagueContainer(image: AppAssets.premierLeauge),
                      onTap: () {
                        // GoRouter.of(context).push(AppRouter.kOrderTable);
                        // Get.to(OrderTable(
                        //   name: "eng.1",
                        // ));
                        GoRouter.of(context)
                            .push(AppRouter.kOrderTable, extra: "eng.1");
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(image: AppAssets.laLiga),
                      onTap: () {
                        // Get.to(OrderTable(
                        //   name: "esp.1",
                        // ));
                        GoRouter.of(context)
                            .push(AppRouter.kOrderTable, extra: "esp.1");
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(image: AppAssets.bundesLiga),
                      onTap: () {
                        // Get.to(OrderTable(
                        //   name: "ger.1",
                        // ));
                        GoRouter.of(context)
                            .push(AppRouter.kOrderTable, extra: "ger.1");
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(image: AppAssets.seriaA),
                      onTap: () {
                        // Get.to(OrderTable(
                        //   name: "ita.1",
                        // ));
                        GoRouter.of(context)
                            .push(AppRouter.kOrderTable, extra: "ita.1");
                      },
                    ),
                    GestureDetector(
                      child: const LeagueContainer(image: AppAssets.liga1),
                      onTap: () {
                        // Get.to(OrderTable(
                        //   name: "fra.1",
                        // ));
                        GoRouter.of(context)
                            .push(AppRouter.kOrderTable, extra: "fra.1");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
