import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leauge_order/core/utils/service_locator.dart';
import 'package:leauge_order/feature/home/data/repos/home_repo_impl.dart';
import 'package:leauge_order/feature/home/presentation/view_models/cubit/order_team_cubit.dart';
import 'package:leauge_order/feature/home/presentation/views/widgets/table_item.dart';

class OrderTable extends StatelessWidget {
  final String name;
  const OrderTable({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: ListView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: const [
                        Text(
                          'Pos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Club',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'PL',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'W',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'D',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'L',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'GD',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'Pts',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // GetBuilder<HomeController>(
            //     builder: (controller) => controller.teams.isNotEmpty
            //         ? ListView.builder(
            //             shrinkWrap: true,
            //             scrollDirection: Axis.vertical,
            //             itemCount: controller.teams.length,
            //             itemBuilder: (context, index) =>
            //                 TableItem(teamModel: controller.teams[index]),
            //           )
            //         : const Center(child: CircularProgressIndicator())),
            //buildTable(),
            BlocBuilder<OrderTeamCubit, OrderTeamState>(
              builder: (context, state) {
                if (state is OrderTeamSuccess) {
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: state.model.length,
                    itemBuilder: (context, index) =>
                        TableItem(teamModel: state.model[index]),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
    ;
  }
}
