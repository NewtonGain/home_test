import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Title', hintText: 'Input your title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'Amount', hintText: 'Input your Amount'),
            controller: amountController,
          ),
          TextButton(
            onPressed: () {
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            child: Text('Add Transaction'),
          ),
        ],
      ),
    );
  }
}
