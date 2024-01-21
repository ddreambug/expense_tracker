import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense_model.dart';

class NewExpenses extends StatefulWidget {
  const NewExpenses({super.key});

  @override
  State<NewExpenses> createState() {
    return _NewExpensesState();
  }
}

class _NewExpensesState extends State<NewExpenses> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _dateSelected;

  void _showDatePicker() async {
    final now = DateTime.now();
    final minusYear = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: minusYear,
        lastDate: now);

    setState(() {
      _dateSelected = pickedDate;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  decoration: const InputDecoration(
                      label: Text('Amount'), prefixText: '\$'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_dateSelected == null
                        ? 'No Date Selected'
                        : formatter.format(_dateSelected!)),
                    IconButton(
                        onPressed: _showDatePicker,
                        icon: const Icon(Icons.date_range_outlined))
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  print('${_titleController.text} \$${_amountController.text}');
                  Navigator.pop(context);
                },
                child: const Text('Save Input'),
              )
            ],
          )
        ],
      ),
    );
  }
}

//another text field separate col, amount the expense, using soft keyboard, value is stored and printed, add another button to cancel editing and close the modal overlay