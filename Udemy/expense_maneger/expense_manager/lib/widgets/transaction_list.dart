import 'package:expense_manager/models/transaction.dart';
import 'package:expense_manager/widgets/transaction_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  const TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: transactions.isEmpty
            ? LayoutBuilder(builder: (context, constraints) {
                return Column(
                  children: [
                    Text(
                      'No transactions',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: constraints.maxHeight * 0.6,
                        child: Image.asset(
                          'assets/images/waiting.png',
                          fit: BoxFit.cover,
                        )),
                  ],
                );
              })
            // : ListView.builder(
            //     itemCount: transactions.length,
            //     itemBuilder: (context, index) {
            //       return TransactionItem(
            //           key: ValueKey(transactions[index].id),
            //           transaction: transactions[index],
            //           deleteTransaction: deleteTransaction);
            //     }),
            : ListView(
                children: transactions
                    .map((tx) => TransactionItem(
                          key: ValueKey(tx.id),
                          transaction: tx,
                          deleteTransaction: deleteTransaction,
                        ))
                    .toList()));
  }
}
