import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat('dd/MM/yyyy');
const uuid = Uuid();

enum Category { food, travel, entertainment, shopping, bills, other }

const categoryIcons = {
  Category.food: Icons.restaurant,
  Category.travel: Icons.flight_takeoff,
  Category.entertainment: Icons.movie,
  Category.shopping: Icons.shopping_cart,
  Category.bills: Icons.receipt_long,
  Category.other: Icons.category,
};

const categoryLabels = {
  Category.food: 'Alimentação',
  Category.travel: 'Viagens',
  Category.entertainment: 'Lazer',
  Category.shopping: 'Compras',
  Category.bills: 'Contas',
  Category.other: 'Outros',
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final Category category;
  final DateTime date;

  Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}
