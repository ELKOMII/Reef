import 'package:erp12k/components/Buttons/custom_elevated_button.dart';
import 'package:erp12k/screens/DetailsPage/Clinetspage/Widgets/cdp_elevated_page_view_widget.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:flutter/material.dart';

class ClientDetailedPage extends StatelessWidget {
  const ClientDetailedPage(
      {super.key, required this.id, required this.clientDetailes});
  final String id;
  final clientDetailes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondry,
      appBar: AppBar(
          backgroundColor: AppColors.primary,
          centerTitle: true,
          title: SizedBox(
              height: 90, child: Image.asset('assets/images/logo.jpg'))),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    clientDetailes['name'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    clientDetailes['email'],
                    // id,
                    style: const TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ],
              ),
            ),
            CDPElevatedPageViewWidget(
              clientDetailes: clientDetailes,
              id: id,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.black12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(
                      color: Colors.orange,
                      icon: const Icon(Icons.email),
                      ontap: () {},
                    ),
                    CustomElevatedButton(
                      color: Colors.green,
                      icon: const Icon(Icons.location_on),
                      ontap: () {},
                    ),
                    CustomElevatedButton(
                      color: Colors.blue,
                      icon: const Icon(Icons.call),
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
