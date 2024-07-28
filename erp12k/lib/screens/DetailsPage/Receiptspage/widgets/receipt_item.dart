import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiptItem extends StatelessWidget {
   ReceiptItem({
    super.key,
    required this.name,
    required this.price,
     this.ontap, required this.quantity, required this.subtotal,
  });
  final String name;
  final int price;
  final int quantity;
  final int subtotal;
   VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 35.w, child:  Center(child: Text(quantity.toString()))),
                SizedBox(
                    width: 80.w,
                    child: Flexible(
                        child: Text(
                      name,
                      textDirection: TextDirection.rtl,
                    ))),
                 Text(price.toString()),
                SizedBox(width: 35.w, child: Text(subtotal.toString())),
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
