import 'package:erp12k/Widgets/mini_transaction.dart';
import 'package:erp12k/screens/CreatesPage/transaction_create_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key, required this.warehouse});
  final String warehouse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.primary,
          title: const Text(
            'التحويلات',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Column(
        children: [
          const Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(': السيارة',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('ا ص م 2345',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => const MiniTransaction()))
        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              AppNavigation.push(context, const TransactionCreatePage()),
          backgroundColor: AppColors.primary,
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        )
    );
  }
}



 // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (context) {
          //           return AlertDialog(
          //             title: const Text('تحويل للمخزن'),
          //             content: Row(children: [
          //               IconButton(
          //                 icon: const Icon(Icons.close),
          //                 onPressed: () {},
          //               ),
          //               IconButton(
          //                 icon: const Icon(Icons.check),
          //                 onPressed: () {},
          //               ),
          //             ]),
          //           );
          //         },
          //       ),
          //       child: Container(
          //         padding: const EdgeInsets.all(10),
          //         height: 170.h,
          //         width: 150.w,
          //         decoration: BoxDecoration(
          //             // border: Border.all(color: Colors.indigo, width: 4),
          //             borderRadius: BorderRadius.circular(20),
          //             color: Colors.blue),
          //         child: const Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Text(
          //               'تحويل للمخزن',
          //               style: TextStyle(
          //                   fontSize: 25, fontWeight: FontWeight.bold),
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceAround,
          //               children: [
          //                 Icon(
          //                   Icons.local_shipping,
          //                   size: 35,
          //                 ),
          //                 Text(
          //                   '==>',
          //                   style: TextStyle(fontSize: 20),
          //                 ),
          //                 Icon(
          //                   Icons.warehouse,
          //                   size: 35,
          //                 )
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         showDialog(
          //           context: context,
          //           builder: (context) {
          //             return AlertDialog(
          //               title: const Text('trans2'),
          //               content: Row(children: [
          //                 IconButton(
          //                   icon: const Icon(Icons.close),
          //                   onPressed: () {},
          //                 ),
          //                 IconButton(
          //                   icon: const Icon(Icons.check),
          //                   onPressed: () {},
          //                 ),
          //               ]),
          //             );
          //           },
          //         );
          //       },
          //       child: Container(
          //         padding: const EdgeInsets.all(10),
          //         height: 170.h,
          //         width: 150.w,
          //         decoration: BoxDecoration(
          //             // border: Border.all(color: Colors.orange, width: 4),
          //             borderRadius: BorderRadius.circular(20),
          //             color: Colors.amber),
          //         child: const Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Text(
          //               'تحويل للعربه',
          //               style: TextStyle(
          //                   fontSize: 25, fontWeight: FontWeight.bold),
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceAround,
          //               children: [
          //                 Icon(
          //                   Icons.warehouse,
          //                   size: 35,
          //                 ),
          //                 Text(
          //                   '==>',
          //                   style: TextStyle(fontSize: 20),
          //                 ),
          //                 Icon(
          //                   Icons.local_shipping,
          //                   size: 35,
          //                 ),
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // )