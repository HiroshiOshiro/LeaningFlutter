import 'package:expense_manager/models/transaction.dart';
import 'package:expense_manager/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserTransactionState();
  }
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shoes2',
      amount: 63.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransaction),
    ]);
  }
}
