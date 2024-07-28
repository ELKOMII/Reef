import 'package:erp12k/components/searchfields/client_search_field.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class VisitsCreatePage extends StatelessWidget {
  const VisitsCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'انشاء زيارة',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
                padding: EdgeInsets.all(8),
                child: ClientSearchField(title: 'العميل')),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                    label: const Text('تاريخ الانشاء'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                    label: const Text('تاريخ و وقت الزياره'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'نوع الزيارة',
                  contentPadding: const EdgeInsets.all(10),
                ),
                // value: 'test',
                items: const [
                  DropdownMenuItem(
                    value: 'one',
                    child: Text('تحصيل'),
                  ),
                  DropdownMenuItem(
                    value: 'two',
                    child: Text('توريد'),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                    label: const Text('الموقع'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                    label: const Text('غرض الزياره'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                    onPressed: () {
                      AppNavigation.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('تم انشاء زيارة'),
                        backgroundColor: Colors.green,
                      ));
                    },
                    child: const Text(
                      'انشاء',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
