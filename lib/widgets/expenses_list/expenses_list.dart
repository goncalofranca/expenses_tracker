import 'package:flutter/material.dart';

import '../../models/expense.dart';
import 'expensen_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]), 
        onDismissed:(direction) => onRemoveExpense(expenses[index]),
        child: ExpensesListItem(
          expense: expenses[index],
          onRemoveExpense: onRemoveExpense,
      ), 
    ),
    );
  }
}
