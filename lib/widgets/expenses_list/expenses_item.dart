import 'package:expense_tracker/model/expense_model.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expenseItem, {super.key});

  final ExpenseModel expenseItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(expenseItem.title),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text('\$ ${expenseItem.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(CategoryIcon[expenseItem.category]),
                  const SizedBox(width: 8),
                  Text(expenseItem.date.toString()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
