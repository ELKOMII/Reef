import 'package:erp12k/screens/DetailsPage/Transactionpage/transaction_detailed_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class MiniTransaction extends StatelessWidget {
  const MiniTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () =>
              AppNavigation.push(context, const TransactionDetailedPage()),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.secondry,
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Text('W19'),
                Column(
                  children: [
                    Text('#T12345'),
                    Text('تم التاكيد'),
                  ],
                ),
                Text('12000'),
              ],
            ),
          )),
    );
  }
}
