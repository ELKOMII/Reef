import 'package:erp12k/screens/DetailsPage/Visitspage/visit_detailed_page.dart';
import 'package:erp12k/components/tiles/general_tile_data_row.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:erp12k/src/styles.dart';
import 'package:flutter/material.dart';

class VisitsTile2 extends StatelessWidget {
  const VisitsTile2({
    super.key,
    required this.index,
    required this.isToday,
    required this.id
  });
  final bool isToday;
  final int index;
  final String id;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppNavigation.push(
        context,
        const VisitDetailedPage(
          isToday: true,
          isDone: 'Waiting',
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              color: AppColors.secondry,
              borderRadius: BorderRadius.circular(26),
             ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        id,
                        style: AppFonts.black,
                      ),
                      const Text('0123456789',
                          style: TextStyle(color: Colors.black45)),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      child: Text('LM'),
                    ),
                  ),
                ],
              ),
              const GeneralTileDataRow(
                data: 'Cairo,Egypt',
                icon: Icons.location_on,
              ),
              const GeneralTileDataRow(
                data: 'Mon,12/30',
                icon: Icons.calendar_today,
              ),
              const GeneralTileDataRow(
                  data: '10:30 PM', icon: Icons.watch_later_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
