import 'package:expense_tracker/model/expense_model.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseModel> _registeredExpenses = [
    ExpenseModel(
        title: "Flutter Course",
        amount: 19.90,
        date: DateTime.now(),
        category: Category.work),
    ExpenseModel(
        title: "Cinema",
        amount: 20.00,
        date: DateTime.now(),
        category: Category.leisure),
    ExpenseModel(
        title: "Food",
        amount: 10.50,
        date: DateTime.now(),
        category: Category.food),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('this will be chart'),
          Text('this will be list'),
        ],
      ),
    );
  }
}
