import 'package:erp12k/components/Buttons/fatora_button.dart';
import 'package:erp12k/components/OrdersPageComponents/custom_text_field.dart';
import 'package:erp12k/components/searchfields/client_search_field.dart';
import 'package:erp12k/screens/CreatesPage/client_create_page.dart';
import 'package:erp12k/screens/DetailsPage/Receiptspage/receipt_detailed_page.dart';
import 'package:erp12k/screens/DetailsPage/Receiptspage/widgets/all_receipt_item.dart';
import 'package:erp12k/screens/DetailsPage/Receiptspage/widgets/receipt_item.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiptCreatePage extends StatelessWidget {
  const ReceiptCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.primary,
          title: const Text('انشاء فاتورة',
              style: TextStyle(fontWeight: FontWeight.bold))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.rtl,
                children: [
                  const Text(
                    'العميل',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      width: 200.w,
                      height: 50.h,
                      child: const ClientSearchField(
                        title: 'العميل',
                      )),
                  IconButton(
                    onPressed: () =>
                        AppNavigation.push(context, const ClientCreatePage()),
                    icon: const Icon(Icons.add),
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  ),
                ],
              ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: DropdownButtonFormField(
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(16)),
              //       labelText: 'الحالة',
              //       contentPadding: const EdgeInsets.all(20),
              //     ),
              //     // value: 'test',
              //     items: const [
              //       DropdownMenuItem(
              //         value: 'one',
              //         child: Text('تم التسليم'),
              //       ),
              //       DropdownMenuItem(
              //         value: 'two',
              //         child: Text('قيد التوصيل'),
              //       ),
              //     ],
              //     onChanged: (value) {},
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: SizedBox(
              //     height: 150.h,
              //     width: 300.w,
              //     child: const AllReceiptItem(),
              //   ),
              // ),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   textDirection: TextDirection.rtl,
              //   children: [
              //     Text(
              //       ' : اجمالي السعر',
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              //     ),
              //     Text(
              //       '\$32000',
              //       style: TextStyle(
              //           color: Colors.red,
              //           decoration: TextDecoration.lineThrough,
              //           fontSize: 20),
              //     ),
              //     Text(
              //       '\$20000',
              //       style: TextStyle(fontSize: 20),
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   textDirection: TextDirection.rtl,
              //   children: [
              //     const Text(
              //       ' : الخصم',
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     Text('\$12000',
              //         style: TextStyle(color: Colors.blue.shade800)),
              //   ],
              // ),
              // SizedBox(
              //   height: 10.h,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   textDirection: TextDirection.rtl,
              //   children: [
              //     const Text(
              //       ' : اجمالي المدفوع',
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     Text('\$0', style: TextStyle(color: Colors.green.shade800)),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   textDirection: TextDirection.rtl,
              //   children: [
              //     const Text(
              //       ' : المتبقي',
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     Text('\$20000', style: TextStyle(color: Colors.red.shade800)),
              //   ],
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'السعر',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                'الخصم',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'الصافي',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        ////////////////////////////////////////////////////////////////////////
                        SizedBox(
                          width: 20.w,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '32000',
                              style: TextStyle(
                                color: Colors.red.shade800,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Text('12000'),
                            ),
                            const Text(
                              '20000',
                              // style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 70.w,
                    // ),
                    Column(
                      children: [
                        SizedBox(
                          // width: 100.w,
                          child: ElevatedButton(
                            onPressed: () => showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: AllReceiptItemEdit(
                                    ontap: () {

                                      showDialog(

                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text('تعديل المنتج'),
                                            content: SizedBox(
                                                height: 150,
                                                child: Column(
                                                  children: [
                                                    ReceiptItem(
                                                        name: 'error1',
                                                        price: 1,
                                                        quantity: 1,
                                                        subtotal: 1,),
                                                    const CustomTextField(
                                                      title: 'الكمية',
                                                      keyboardType:
                                                          TextInputType.number,
                                                    )
                                                  ],
                                                )),
                                            actions: [
                                              TextButton(
                                                onPressed: () =>
                                                    AppNavigation.pop(context),
                                                style: const ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStatePropertyAll(
                                                          Colors.green),
                                                ),
                                                child: const Text(
                                                  'تعديل الكمية',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () =>
                                                    AppNavigation.pop(context),
                                                style: const ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStatePropertyAll(
                                                          Colors.red),
                                                ),
                                                child: const Text(
                                                  'حذف',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                            actionsAlignment:
                                                MainAxisAlignment.spaceBetween,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  const WidgetStatePropertyAll(Colors.red),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text(
                              'تعديل الفاتورة',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () => showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text(
                                      'اضافة منتج',
                                    ),
                                    content: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          width: 100000,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: ClientSearchField(
                                            title: 'المنتج',
                                          ),
                                        ),
                                        CustomTextField(padding: 16,
                                          title: 'كمية المنتج',
                                          keyboardType: TextInputType.number,
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () =>
                                            AppNavigation.pop(context),
                                        style: const ButtonStyle(
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                    Colors.green)),
                                        child: const Text(
                                          'تاكيد',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                    actionsAlignment: MainAxisAlignment.start,
                                  );
                                }),
                            style: ButtonStyle(
                              backgroundColor:
                                  const WidgetStatePropertyAll(Colors.green),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text(
                              'اضافة منتج',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 100.h,),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                height: 350.h,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('الاجمالي'),
                          Text('السعر'),
                          SizedBox(width: 2),
                          Text('الخصم'),
                          SizedBox(height: 20, width: 45),
                          Text('المنتج'),
                          SizedBox(height: 20, width: 5),
                          Text('الكمية'),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: AppColors.primary,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: AllReceiptItem(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FatoraButton(
                title: 'التالي',
                color: AppColors.primary,
                ontap: () {
                  AppNavigation.push(
                      context,
                      const ReceiptDetailedPage(clientId: '',rId: '',clientName: '',
                      ));
                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('تم انشاء فاتورة'),backgroundColor: Colors.green,));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
