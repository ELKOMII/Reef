import 'package:erp12k/Widgets/mini_receipt.dart';
import 'package:erp12k/Widgets/search_add_bar.dart';
import 'package:erp12k/screens/CreatesPage/receipt_create_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class ReceiptsPage extends StatelessWidget {
  const ReceiptsPage({super.key});
  final bool isDone = true;                     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title:
            const Text('الفواتير',style: TextStyle(fontWeight: FontWeight.bold),)
      ),
      body: Column(
        children: [
          SearchAddBar(
            filter: () {},
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) => MiniReceipt(clientName: '',price: 5,receiptid: 'error',clientId: '',rId: '',),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AppNavigation.push(context, const ReceiptCreatePage()),
        backgroundColor: AppColors.primary,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
