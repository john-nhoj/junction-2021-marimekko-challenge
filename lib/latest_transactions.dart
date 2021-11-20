import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transaction(
          transactionDate: DateTime.now(),
          coinsEarned: -20,
        ),
        Transaction(
          transactionDate: DateTime.now(),
          coinsEarned: 30,
        ),
        Transaction(
          transactionDate: DateTime.now(),
          coinsEarned: 40,
        ),
        Transaction(
          transactionDate: DateTime.now(),
          coinsEarned: 50,
        )
      ],
    );
  }
}

class Transaction extends StatelessWidget {
  const Transaction(
      {Key? key, required this.transactionDate, this.coinsEarned = 20})
      : super(key: key);

  final int coinsEarned;
  final DateTime transactionDate;

  @override
  Widget build(BuildContext context) {
    return Card(
        // color: Color(0xFF4960a3),
        elevation: 10,
        margin: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Transaction date: ",
                    // style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    DateFormat("dd-MM-yyyy").format(transactionDate),
                    // style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Marimekkoins ${coinsEarned > 0 ? "earned" : "spent"}: ",
                    // style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "${coinsEarned > 0 ? "+" : ""}${coinsEarned.toString()}",
                    // style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
