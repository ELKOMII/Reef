import 'package:erp12k/components/HomePageComponents/sub_cont.dart';
import 'package:erp12k/Widgets/notes_container.dart';
import 'package:erp12k/components/static/my_drawer.dart';
import 'package:erp12k/screens/Pages/car_storage_page.dart';
import 'package:erp12k/screens/Pages/client_page.dart';
import 'package:erp12k/screens/Pages/receipts_page.dart';
import 'package:erp12k/screens/Pages/returns_page.dart';
import 'package:erp12k/screens/Pages/visit_page.dart';
import 'package:erp12k/screens/Pages/products_page.dart';
import 'package:erp12k/screens/Pages/transaction_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_on)),
        ],
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title:
            SizedBox(height: 90, child: Image.asset('assets/images/logo.jpg')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              children: [
                Mainsubcont(
                  color: Colors.red,
                  ontap: () {
                    AppNavigation.push(context, const ReceiptsPage());
                  },
                  subnum: 46,
                  subtext: 'الفواتير',
                  subicon: Icons.receipt,
                ),
                Mainsubcont(
                  color: Colors.blue,
                  ontap: () => AppNavigation.push(context, const ClientPage()),
                  subnum: 40,
                  subtext: 'عملاء',
                  subicon: Icons.people,
                ),
                Mainsubcont(
                  color: Colors.green,
                  ontap: () => AppNavigation.push(context, const ReturnsPage()),
                  subnum: 300,
                  subtext: 'مرتجعات',
                  subicon: Icons.repeat_rounded,
                ),
                Mainsubcont(
                  color: Colors.orange,
                  ontap: () => AppNavigation.push(context, const VisitPage()),
                  subnum: 9,
                  subtext: 'زيارات',
                  subicon: Icons.home_work,
                ),
                // Mainsubcont(
                //   color: Colors.purple,
                //   ontap: () {

                //   },
                //   subnum: 1,
                //   subtext: 'التقارير',
                //   subicon: Icons.moving_outlined,
                // ),
                Mainsubcont(
                  color: Colors.indigo.shade900,
                  ontap: () => AppNavigation.push(
                      context, const TransactionPage(warehouse: '5')),
                  subnum: 4,
                  subtext: 'التحويلات',
                  subicon: Icons.compare_arrows_outlined,
                ),
                Mainsubcont(
                  color: Colors.brown,
                  ontap: () =>
                      AppNavigation.push(context, const CarStoragePage()),
                  subnum: 100,
                  subtext: 'مخزني',
                  subicon: Icons.local_shipping,
                ),
                Mainsubcont(
                  color: Colors.black,
                  ontap: () =>
                      AppNavigation.push(context, const ProductsPage()),
                  subnum: 271,
                  subtext: 'المنتجات',
                  subicon: Icons.shopping_cart_rounded,
                ),
              ],
            ),
            const NotesContainer(title: 'ملاحظات', color: Colors.pink),
          ],
        ),
      ),
    );
  }
}
