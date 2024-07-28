import 'package:erp12k/Widgets/mini_return.dart';
import 'package:erp12k/Widgets/search_add_bar.dart';
import 'package:erp12k/screens/CreatesPage/return_create_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class ReturnsPage extends StatelessWidget {
  const ReturnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.primary,
            title: const Text(
              'المرتجعات',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        body: Column(
          children: [
            SearchAddBar(filter: () {}),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => const MiniReturn()),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              AppNavigation.push(context, const ReturnCreatePage()),
          backgroundColor: AppColors.primary,
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ));
  }
}
