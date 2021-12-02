import 'package:flutter/material.dart';
import 'package:home_test/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Text(
                    '\$${transactions[index].amount}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text(transactions[index].title),
                    Text(
                      DateFormat('yyyy-MM-dd').format(transactions[index].date),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
