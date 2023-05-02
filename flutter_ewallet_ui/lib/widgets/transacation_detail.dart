import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'transaction_item.dart';

class DetailTransactions extends StatelessWidget {
  const DetailTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back_ios)),
              const Text("History Transaksi",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3D538F)))
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return TransactionItem(transaction: transactions[index]);
          },
          itemCount: transactions.length,
        ))
      ],
    );
  }
}
