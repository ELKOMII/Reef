import 'package:erp12k/screens/CreatesPage/return_receipt_page.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class ReceiptReturnButton extends StatelessWidget {
  const ReceiptReturnButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => AppNavigation.push(context, const ReturnReceiptPage()),
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.orange),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: const Text(
        'اضافة مرتجع',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
