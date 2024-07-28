import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp12k/Widgets/search_add_bar.dart';
import 'package:erp12k/blocs/main_bloc/main_cubit.dart';
import 'package:erp12k/blocs/main_bloc/main_states.dart';
import 'package:erp12k/components/tiles/client_tile.dart';
import 'package:erp12k/functions/Filters/client_filter_modal_sheet.dart';
import 'package:erp12k/screens/CreatesPage/client_create_page.dart';
import 'package:erp12k/src/app_color.dart';
import 'package:erp12k/src/app_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({
    super.key,
  });

  @override
  State<ClientPage> createState() => _ClientPageState();
}
          String searchKey = "";

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.get(context);
          return Scaffold(
            appBar: AppBar(
                backgroundColor: AppColors.primary,
                centerTitle: true,
                title: const Text(
                  'العملاء',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            body: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      searchKey = value;
                    });
                    print(searchKey);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      labelText: 'Search',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                ),
                Expanded(
                  child: StreamBuilder(
                      stream: cubit.getClient(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // QuerySnapshot data = snapshot.data as QuerySnapshot;
                          return ListView.builder(
                              itemCount: snapshot.data.docs.length,
                              itemBuilder: (context, index) {
                                QuerySnapshot data = snapshot.data as QuerySnapshot;
                                if (searchKey.isEmpty) {
                                  return ClientTile(
                                    clientDetailes: data.docs[index],
                                    name: data.docs[index]['name'],
                                    // name: 'found',

                                    address: data.docs[index]['address'],
                                    dateCreated: data.docs[index]['dateCreated'].toString(),
                                    phone1: data.docs[index]['phone1'],
                                    id: data.docs[index].id,
                                  );
                                }
                                if (data.docs[index]['name']
                                    .toString()
                                    // .toLowerCase()
                                    .startsWith(searchKey.toLowerCase())) {
                                  return ClientTile(
                                    clientDetailes: data.docs[index],
                                    name: data.docs[index]['name'],
                                    address: data.docs[index]['address'],
                                    dateCreated: data.docs[index]['dateCreated'].toString(),
                                    phone1: data.docs[index]['phone1'],
                                    id: data.docs[index].id,
                                  );
                                }
                              });
                        } else {
                          return Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primary,
                              backgroundColor: Colors.greenAccent,
                            ),
                          );
                        }
                      }),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () =>
                  AppNavigation.push(context, const ClientCreatePage()),
              backgroundColor: AppColors.primary,
              shape: const CircleBorder(),
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
