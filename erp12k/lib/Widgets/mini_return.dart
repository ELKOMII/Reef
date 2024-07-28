import 'package:erp12k/screens/DetailsPage/ReturnsPage/return_detailed_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class MiniReturn extends StatelessWidget {
  const MiniReturn({
    super.key,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () => AppNavigation.push(context, const ReturnDetailedPage()),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.secondry,
                borderRadius: BorderRadius.circular(10)),
            child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Text('محمد عبدالصمد'),
                Column(
                  children: [
                    Text('#R12345'),
                    Text('تم الاسترجاع'),
                  ],
                ),
                Text('الحالة'),
              ],
            ),
          )),
    );
  }
}
