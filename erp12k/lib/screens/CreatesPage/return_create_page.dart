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

class ReturnCreatePage extends StatelessWidget {
  const ReturnCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text(
          'انشاء مرتجع',
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
                      'العميل',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    child: const ClientSearchField(
                      title: 'العميل',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.rtl,
                children: [
                  SizedBox(
                    width: 51.w,
                    child: const Text(
                      'سبب الاسترجاع',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'سبب الاسترجاع',
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      // value: 'test',
                      items: const [
                        DropdownMenuItem(
                          value: 'one',
                          child: Text('انتهاء الصلاحية'),
                        ),
                        DropdownMenuItem(
                          value: 'two',
                          child: Text('عيب في المنتج'),
                        ),
                        DropdownMenuItem(
                          value: 'three',
                          child: Text('اخري'),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.rtl,
                children: [
                  SizedBox(
                    width: 50.w,
                    child: const Text(
                      'الحالة',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'الحالة',
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      // value: 'test',
                      items: const [
                        DropdownMenuItem(
                          value: 'one',
                          child: Text('تبديل المنتج'),
                        ),
                        DropdownMenuItem(
                          value: 'two',
                          child: Text('استرجاع ثمن المنتج'),
                        ),
                        DropdownMenuItem(
                          value: 'three',
                          child: Text('اخري'),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  textDirection: TextDirection.rtl,
                  children: [
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
                                            title: const Text('تعديل المرتجع'),
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
                                      'اضافة مرتجع',
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
                              'اضافة مرتجع',
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
                    content: Text('تم انشاء مرتجع'),
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
