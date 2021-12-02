import 'package:flutter/material.dart';
import 'package:home_test/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Text(tx.title),
                  Text(
                    DateFormat('yyyy-MM-dd').format(tx.date),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
