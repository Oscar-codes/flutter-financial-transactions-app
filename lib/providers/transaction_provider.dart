import 'package:flutter/material.dart';
import '../db/transaction_db.dart';
import '../models/FinancialTransaction .dart';

class TransactionProvider with ChangeNotifier {
  List<FinancialTransaction> _transactions = [];

  List<FinancialTransaction> get transactions => _transactions;

  double get totalIncome => _transactions
      .where((tx) => tx.isIncome)
      .fold(0.0, (sum, tx) => sum + tx.amount);

  double get totalExpenses => _transactions
      .where((tx) => !tx.isIncome)
      .fold(0.0, (sum, tx) => sum + tx.amount);

  double get balance => totalIncome - totalExpenses;

  Future<void> loadTransactions() async {
    _transactions = await TransactionDatabase.instance.fetchTransactions();
    notifyListeners();
  }

  Future<void> addTransaction(FinancialTransaction transaction) async {
    await TransactionDatabase.instance.insertTransaction(transaction);
    await loadTransactions();
  }

  Future<void> deleteTransaction(int id) async {
    await TransactionDatabase.instance.deleteTransaction(id);
    await loadTransactions();
  }
}
