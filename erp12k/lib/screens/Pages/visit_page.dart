import 'package:erp12k/Widgets/search_add_bar.dart';
import 'package:erp12k/components/Buldiers/visits_list_2_builder.dart';
import 'package:erp12k/components/tiles/visits_tile_2.dart';
import 'package:erp12k/functions/Filters/visit_filter_modal_sheet.dart';
import 'package:erp12k/screens/CreatesPage/visits_create_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:erp12k/src/styles.dart';
import 'package:flutter/material.dart';

class VisitPage extends StatelessWidget {
  const VisitPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primary,
          centerTitle: true,
          title: Text(
            'الزيارات',
            style: AppFonts.black,
          )),
      body: Column(
        children: [
          SearchAddBar(
            filter: () => visitFilterModalSheet(context),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  VisitsTile2(index: 1, isToday: true, id: '1'),
            ),
          ),
          // SizedBox(height: 20,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AppNavigation.push(context, const VisitsCreatePage()),
        backgroundColor: AppColors.primary,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
