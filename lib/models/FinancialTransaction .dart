class FinancialTransaction  {
  final int? id;
  final String description;
  final double amount;
  final bool isIncome;
  final DateTime date;

  FinancialTransaction ({
    this.id,
    required this.description,
    required this.amount,
    required this.isIncome,
    required this.date,
  });

  // Convierte los datos de la transacción a un mapa para SQLite
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'amount': amount,
      'isIncome': isIncome ? 1 : 0,
      'date': date.toIso8601String(),
    };
  }

  // Crea una transacción desde un mapa (de SQLite)
  static FinancialTransaction  fromMap(Map<String, dynamic> map) {
    return FinancialTransaction (
      id: map['id'],
      description: map['description'],
      amount: map['amount'],
      isIncome: map['isIncome'] == 1,
      date: DateTime.parse(map['date']),
    );
  }
}
