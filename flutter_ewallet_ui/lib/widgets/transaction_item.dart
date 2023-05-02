import 'package:flutter/material.dart';

import 'package:flutter_ewallet_ui/models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF3D538F)),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 132, 187, 232),
                borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              height: 35,
              width: 35,
              child: Center(
                child: Text(
                  transaction.to
                      .split(" ")
                      .map((e) => e.substring(0, 1))
                      .toList()
                      .join(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3D538F)),
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  transaction.to,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3D538F)),
                ),
              ),
              Text(
                transaction.date,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3D538F)),
              ),
            ],
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "- Rp. ${transaction.amount}",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Text(
                transaction.description,
                style: const TextStyle(fontSize: 12, color: Color(0xFF3D538F)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
