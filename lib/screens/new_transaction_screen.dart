import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/FinancialTransaction .dart';
import '../providers/transaction_provider.dart';

class NewTransactionScreen extends StatefulWidget {
  @override
  _NewTransactionScreenState createState() => _NewTransactionScreenState();
}

class _NewTransactionScreenState extends State<NewTransactionScreen> {
  final _descriptionController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isIncome = true;
  DateTime _selectedDate = DateTime.now();

  void _submitData() {
    final enteredDescription = _descriptionController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredDescription.isEmpty || enteredAmount <= 0) {
      return;
    }

    final newTransaction = FinancialTransaction(
      description: enteredDescription,
      amount: enteredAmount,
      isIncome: _isIncome,
      date: _selectedDate,
    );

    Provider.of<TransactionProvider>(context, listen: false)
        .addTransaction(newTransaction);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nueva Transacción')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Descripción'),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: 'Monto'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            Row(
              children: [
                Text('Ingreso'),
                Switch(
                  value: _isIncome,
                  onChanged: (val) => setState(() => _isIncome = val),
                ),
                Text('Gasto'),
              ],
            ),
            ElevatedButton(
              child: Text('Seleccionar Fecha'),
              onPressed: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  setState(() {
                    _selectedDate = pickedDate;
                  });
                }
              },
            ),
            ElevatedButton(
              child: Text('Añadir Transacción'),
              onPressed: _submitData,
            ),
          ],
        ),
      ),
    );
  }
}
