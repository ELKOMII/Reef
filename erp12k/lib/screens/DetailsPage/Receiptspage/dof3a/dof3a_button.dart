import 'package:erp12k/screens/DetailsPage/Receiptspage/dof3a/dof3a_page.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class Dof3aButton extends StatelessWidget {
  const Dof3aButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => AppNavigation.push(context, const Dof3aPage()),
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.blue),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: const Text(
        'اضافة دفعة',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
