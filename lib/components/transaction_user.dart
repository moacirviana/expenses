import 'dart:math';

import './transaction_form.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
        id: 't1', title: 'Produto 01', value: 10.76, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Produto 02', value: 103.76, date: DateTime.now()),
    Transaction(
        id: 't3',
        title: 'Tênnis de corrida',
        value: 110.47,
        date: DateTime.now()),
    Transaction(
        id: 't4',
        title: 'Tênnis de dançar',
        value: 310.06,
        date: DateTime.now()),
    Transaction(
        id: 't5', title: 'Produto 05', value: 10.66, date: DateTime.now()),
    Transaction(
        id: 't6', title: 'Conta de Luz', value: 120.5, date: DateTime.now())
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());
    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transaction),
        TransactionForm(_addTransaction)
      ],
    );
  }
}
