class Transaction {
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;

  Transaction(this.id, this.to, this.amount, this.date, this.description);
}

final List<Transaction> transactions = [
  Transaction(1, "shopee", "350.000", "30 Jul 2022 12:13", "pulsa"),
  Transaction(2, "tokopedia", "500.000", "02 Mei 2023 10:05", "elektronik"),
  Transaction(3, "bukalapak", "120.000", "30 Apr 2023 08:22", "fashion"),
  Transaction(4, "blibli", "750.000", "29 Apr 2023 15:40", "rumah tangga"),
  Transaction(5, "shopee", "1.250.000", "28 Apr 2023 11:20", "kesehatan"),
  Transaction(6, "tokopedia", "300.000", "27 Apr 2023 09:35", "otomotif"),
  Transaction(7, "lazada", "850.000", "26 Apr 2023 14:10", "elektronik"),
  Transaction(8, "shopee", "700.000", "25 Apr 2023 16:45", "fashion"),
  Transaction(9, "bukalapak", "250.000", "24 Apr 2023 13:30", "olahraga"),
  Transaction(10, "blibli", "450.000", "23 Apr 2023 08:15", "perabot rumah"),
  Transaction(11, "lazada", "600.000", "22 Apr 2023 11:55", "kesehatan"),
];
