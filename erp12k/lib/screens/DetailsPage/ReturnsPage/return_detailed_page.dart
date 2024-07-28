import 'package:erp12k/screens/DetailsPage/ReturnsPage/Widgets/return_detailed_page_widget.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReturnDetailedPage extends StatelessWidget {
  const ReturnDetailedPage({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 220.h,
                width: 300.w,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
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
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SelectableText(
                                  '#R12345',
                                  style: TextStyle(fontSize: 30),
                                ),
                                Text(
                                  '#A12345',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'محمد عبدالصمد',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                // Text(
                                //   'mo.samad2016@gmail.com',
                                //   style: TextStyle(
                                //       fontSize: 15, color: Colors.black45),
                                // ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('تاريخ الاسترجاع',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('وقت الاستلام',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('سبب الاسترجاع',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('الحالة',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('12-20-2019'),
                            Text('10:00 AM'),
                            Text('انتهاء الصلاحيه'),
                            Text('تبديل المنتج'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ReturnDetailedPageWidget(),
          ],
        ),
      ),
    );
  }
}
