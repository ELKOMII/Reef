import 'package:erp12k/screens/DetailsPage/Clinetspage/Tiles/client_transaction_tile.dart';
import 'package:flutter/material.dart';

class ClientTransactionsPage extends StatelessWidget {
  const ClientTransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemBuilder: (context, index) => const ClientTransactionTile(date: '00',price: 00,way: 'error',),
        );
  }
}
