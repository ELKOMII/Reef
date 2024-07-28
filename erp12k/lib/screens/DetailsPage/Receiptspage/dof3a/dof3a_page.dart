import 'package:erp12k/screens/DetailsPage/Receiptspage/widgets/receipt_detailed_card.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dof3aPage extends StatelessWidget {
  const Dof3aPage({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text(
          'اضافة دفعة',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              ReceiptDetailedCard(clientName: 'error',receiptId: 'error',),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'تاريخ الانشاء',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'السعر',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'الخصم',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'الصافي',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'اجمالي المدفوع',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'المتبقي',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('09-10-2018  10:49 AM'),
                      Text(
                        '32000',
                        style: TextStyle(
                          color: Colors.red.shade800,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const Text('12000'),
                      const Text(
                        '20000',
                        // style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                      Text('20000',
                          style: TextStyle(color: Colors.red.shade800)),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  enabled: false,
                  initialValue:
                      DateTime.now().toString().replaceRange(16, null, ''),
                  decoration: InputDecoration(
                      label: const Text('تاريخ و وقت الدفع'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: const Text('المبلغ المدفوع'),
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
                    labelText: 'كيفية الدفع',
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  // value: 'test',
                  items: const [
                    DropdownMenuItem(
                      value: 'one',
                      child: Text('كاش'),
                    ),
                    DropdownMenuItem(
                      value: 'two',
                      child: Text('شيك'),
                    ),
                    DropdownMenuItem(
                      value: 'three',
                      child: Text('تحويل بنكي'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.green)),
                      onPressed: () {
                        AppNavigation.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('تم اضافة دفعة'),
                            backgroundColor: Colors.green,
                          ),
                        );
                      },
                      child: const Text(
                        'تاكيد',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
