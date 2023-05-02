import 'package:flutter/material.dart';
import 'package:flutter_ewallet_ui/models/transaction.dart';
import 'package:flutter_ewallet_ui/widgets/menu_box.dart';
import 'package:flutter_ewallet_ui/widgets/transaction_item.dart';

import '../widgets/transacation_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade800, Colors.white60],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.blueGrey,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/736x/31/1e/a2/311ea2ea2fbeed03f9c1decbc6f57961.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ikhlas",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Stack(
                      children: [
                        const Icon(
                          Icons.notifications_none_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        Positioned(
                            top: 0.0,
                            right: 0.0,
                            child: Icon(Icons.brightness_1,
                                color: Colors.red.shade200))
                      ],
                    ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Column(
              children: const [
                Text(
                  "Saldo",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Rp. 2.000,000,000",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  MenuBox(icon: Icons.send_rounded, text: "kirim"),
                  MenuBox(icon: Icons.account_balance_wallet, text: "terima"),
                  MenuBox(icon: Icons.payment, text: "bayar"),
                  MenuBox(icon: Icons.more_horiz, text: "lainnya")
                ]),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  child: Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "Transaksi Terakhir",
                        style: TextStyle(
                            color: Color(0xFF3D538F),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext ctx) {
                                return const DetailTransactions();
                              });
                        },
                        child: const Text(
                          "Lihat Semua",
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(color: Color(0xFF3D538F), fontSize: 14),
                        ),
                      )
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
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
