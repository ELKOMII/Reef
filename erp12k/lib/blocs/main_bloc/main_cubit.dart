import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp12k/models/client_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'main_states.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitial());
  static MainCubit get(context) => BlocProvider.of(context);

  TextEditingController namecont = TextEditingController();
  TextEditingController companyNamecont = TextEditingController();
  TextEditingController emailcont = TextEditingController();
  TextEditingController phone1cont = TextEditingController();
  TextEditingController phone2cont = TextEditingController();
  TextEditingController addresscont = TextEditingController();
  TextEditingController areacont = TextEditingController();
  TextEditingController area2cont = TextEditingController();
  TextEditingController area3cont = TextEditingController();
  final FirebaseFirestore _store = FirebaseFirestore.instance;

  Stream getClient() {
    return _store.collection('clients').snapshots();
  }

  // Stream searchClient() {
  //   return _store.collection('clients').where().firestore.databaseId.length
  // }

  void createClient() {
    _store
        .collection('clients')
        .add(ClientModel(
          name: namecont.text.trim(),
          companyName: companyNamecont.text.trim(),
          email: emailcont.text.trim(),
          phone1: phone1cont.text.trim(),
          phone2: phone2cont.text.trim(),
          address: addresscont.text.trim(),
          area: areacont.text.trim(),
          area2: area2cont.text.trim(),
          area3: area3cont.text.trim(),
          dateCreated: DateFormat.yMd().format(DateTime.now()).toString(),
          discount: 10,
        ).toJson())
        .whenComplete(() {
      namecont.clear();
      companyNamecont.clear();
      emailcont.clear();
      phone1cont.clear();
      phone2cont.clear();
      addresscont.clear();
      areacont.clear();
      area2cont.clear();
      area3cont.clear();
    });
  }

  Stream getProduct() {
    return _store.collection('products').snapshots();
  }

  Stream getCarProduct() {
    return _store
        .collection('users')
        .doc('${FirebaseAuth.instance.currentUser?.uid}')
        .collection('products')
        .snapshots();
  }
  Stream getClientReceipt({required clientId})
  {
    return _store.collection('clients').doc(clientId).collection('receipts').snapshots();
  }
  Stream getReceipt({ required clientId,required rId})
  {
    return _store.collection('clients').doc(clientId).collection('receipts').doc(rId).collection('items').snapshots();
  }
  Stream getReceiptItems({required clientId,required rId})
  {
    return _store.collection('clients').doc(clientId).collection('receipts').doc(rId).collection('items').snapshots();
  }
  Stream getReceiptReturns({required clientId,required rId})
  {
    return _store.collection('clients').doc(clientId).collection('receipts').doc(rId).collection('returns').snapshots();
  }
  Stream getReceiptDof3a({required clientId,required rId})
  {
    return _store.collection('clients').doc(clientId).collection('receipts').doc(rId).collection('dof3a').snapshots();
  }
}
