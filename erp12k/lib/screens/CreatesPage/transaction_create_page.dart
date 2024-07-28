import 'package:erp12k/components/Buldiers/all_return_receipt_items.dart';
import 'package:erp12k/components/Buttons/fatora_button.dart';
import 'package:erp12k/components/OrdersPageComponents/custom_text_field.dart';
import 'package:erp12k/components/searchfields/client_search_field.dart';
import 'package:erp12k/components/tiles/return_receipt_item_tile.dart';
import 'package:erp12k/screens/DetailsPage/ReturnsPage/Widgets/return_detailed_page_widget.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionCreatePage extends StatelessWidget {
  const TransactionCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text(
          'انشاء طلب تحويل',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
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
                  SizedBox(
                    width: 50.w,
                    child: const Text(
                      'العربة',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    child: const ClientSearchField(
                      title: 'العربة',
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    SizedBox(
                      height: 92,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'طلب تحويل للمخزن',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                        'تاكيد علي طلب تحويل كل مخزون العربة للمخزن'),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width: 200.w,
                                        height: 50.h,
                                        child: const ClientSearchField(
                                          title: 'المخزن',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      AppNavigation.pop(context);
                                      AppNavigation.pop(context);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text(
                                            'تم تحويل كل مخزون العربة للمخزن'),
                                        backgroundColor: Colors.green,
                                      ));
                                    },
                                    style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.green)),
                                    child: const Text(
                                      'تاكيد',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () => AppNavigation.pop(context),
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            WidgetStatePropertyAll(Colors.red)),
                                    child: const Text(
                                      'الغاء',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                                actionsAlignment: MainAxisAlignment.spaceAround,
                              );
                            },
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.indigo),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'تحويل للمخزن',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
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
                                  child: AllReturnReceiptItemsEdit(
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
                                                    ReturnReceiptItem(
                                                      num: 20,
                                                      ontap: () {},
                                                    ),
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
                              'تعديل الطلب',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          // width: 98.w,
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
                                        ClientSearchField(
                                          title: 'المنتج',
                                        ),
                                        CustomTextField(
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
              const ReturnDetailedPageWidget(),
              FatoraButton(
                title: 'تاكيد',
                color: AppColors.primary,
                ontap: () {
                  AppNavigation.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('تم انشاء طلب تحويل للسيارة'),
                    backgroundColor: Colors.green,
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
