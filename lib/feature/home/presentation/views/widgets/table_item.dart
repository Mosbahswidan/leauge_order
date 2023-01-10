import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leauge_order/feature/home/data/repos/TeemModel.dart';

class TableItem extends StatelessWidget {
  final TeamModel teamModel;
  const TableItem({super.key, required this.teamModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Text(teamModel.stats![10].displayValue.toString() + " "),
                Row(
                  children: [
                    Image.network(
                      teamModel.team!.logos![0].href!,
                      height: 20,
                      width: 20,
                    ),
                    teamModel.team!.displayName!.length > 11
                        ? Text(" " +
                            teamModel.team!.displayName!.substring(0, 11) +
                            "...")
                        : Text(" " + teamModel.team!.displayName!),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //playedGame
                Text(teamModel.stats![0].displayValue.toString()),
                //won
                Text(teamModel.stats![6].displayValue.toString()),
                //draw
                Text(teamModel.stats![5].displayValue.toString()),
                //lost
                Text(teamModel.stats![1].displayValue.toString()),
                //goal deffriance
                Text(teamModel.stats![8].displayValue.toString()),
                //points
                Text(teamModel.stats![2].displayValue.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
