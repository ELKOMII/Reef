import 'package:erp12k/components/Buttons/receipt_return_button.dart';
import 'package:erp12k/screens/DetailsPage/Receiptspage/dof3a/dof3a_button.dart';
import 'package:erp12k/screens/DetailsPage/Receiptspage/widgets/rdp_elevated_page_view_widget.dart';
import 'package:erp12k/screens/DetailsPage/Receiptspage/widgets/receipt_detailed_card.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:flutter/material.dart';

class ReceiptDetailedPage extends StatelessWidget {
  const ReceiptDetailedPage({super.key,required this.clientId, required this.rId, this.receiptDetailes, required this.clientName});
  final String clientId;
  final String rId;
  final receiptDetailes;
  final String clientName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title:
            SizedBox(height: 90, child: Image.asset('assets/images/logo.jpg')),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.0),
            child: Icon(Icons.print),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ReceiptDetailedCard(receiptDetailes: receiptDetailes,clientName: clientName,receiptId: receiptDetailes['id'],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                            '',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'اجمالي سعر المرتجع',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'السعر',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'اجمالي المدفوع',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'المتبقي',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                           Text(receiptDetailes['date']),
                          // const Text('time'),
                          const Text('\n0'),
                           Text(receiptDetailes['price'].toString()),
                          Text(receiptDetailes['paid'].toString(),
                              style: TextStyle(color: Colors.green.shade800)),
                          Text(receiptDetailes['remained'].toString(),
                              style: TextStyle(color: Colors.red.shade800)),
                        ],
                      ),
                      const Column(
                        children: [
                          Dof3aButton(),
                          ReceiptReturnButton(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
             RDPElevatedPageViewWidget(clientId: clientId ,rId: rId,)
          ],
        ),
      ),
    );
  }
}
