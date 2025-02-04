import 'package:erp12k/screens/DetailsPage/ReturnsPage/Widgets/return_detailed_page_widget.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionDetailedPage extends StatelessWidget {
  const TransactionDetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title:
            SizedBox(height: 90, child: Image.asset('assets/images/logo.jpg')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
               child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.secondry,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 50,
                                    child: Icon(
                                      Icons.person,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '#T12345',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                   
                                    Text(
                                      'مخزن العجوزه',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'ا ص م 7276',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
             ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0,vertical: 5),
              child: SizedBox(
                // height: 200.h,
                child: Column(
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('التاريخ و الوقت',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('من',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('الي',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('الحالة',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('نوع التحويل',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('مسؤول المخزن',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('قائد السيارة',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                     Text('12-1-2010  10:30PM'),
                     Text('مخزن 6 اكتوبر'),
                     Text('ر و ص 7278'),
                     Text('تم التاكيد'),
                     Text('الي مخزن السياره'),
                     Text('مجدي يعقوب'),
                     Text('عبدالفتاح السيسي'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 370.h,child: const ReturnDetailedPageWidget()),
          ],
        ),
      ),
    );
  }
}
