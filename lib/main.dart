import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 146, 226, 248));
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: const Color.fromARGB(255, 79, 158, 180),
            foregroundColor: kColorScheme.onPrimary),
      ),
      home: const Expenses(),
    ),
  );
}
