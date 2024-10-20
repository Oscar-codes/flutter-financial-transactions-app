import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/FinancialTransaction .dart';
import '../providers/transaction_provider.dart';
import './new_transaction_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TransactionProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Transacciones')),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSummary('Ingresos', provider.totalIncome, Colors.green),
                  _buildSummary('Gastos', provider.totalExpenses, Colors.red),
                  _buildSummary('Balance', provider.balance, Colors.blue),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: provider.transactions.length,
              itemBuilder: (ctx, index) {
                final tx = provider.transactions[index];
                return ListTile(
                  title: Text(tx.description),
                  subtitle: Text('${tx.amount.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => provider.deleteTransaction(tx.id!),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: tx.isIncome ? Colors.green : Colors.red,
                    child: Text(tx.isIncome ? 'I' : 'G'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => NewTransactionScreen(),
          ));
        },
      ),
    );
  }

  Widget _buildSummary(String title, double amount, Color color) {
    return Column(
      children: [
        Text(title),
        Text('\$${amount.toStringAsFixed(2)}', style: TextStyle(color: color)),
      ],
    );
  }
}
