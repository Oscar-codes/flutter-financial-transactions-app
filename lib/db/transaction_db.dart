import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/FinancialTransaction .dart';

class TransactionDatabase {
  static final TransactionDatabase instance = TransactionDatabase._init();
  static Database? _database;

  TransactionDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('transactions.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE transactions (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        description TEXT NOT NULL,
        amount REAL NOT NULL,
        isIncome INTEGER NOT NULL,
        date TEXT NOT NULL
      )
    ''');
  }

  // Insertar nueva transacción
  Future<void> insertTransaction(FinancialTransaction  transaction) async {
    final db = await instance.database;
    await db.insert('transactions', transaction.toMap());
  }

  // Obtener todas las transacciones
  Future<List<FinancialTransaction >> fetchTransactions() async {
    final db = await instance.database;
    final result = await db.query('transactions');
    return result.map((map) => FinancialTransaction .fromMap(map)).toList();
  }

  // Eliminar una transacción
  Future<void> deleteTransaction(int id) async {
    final db = await instance.database;
    await db.delete('transactions', where: 'id = ?', whereArgs: [id]);
  }
}
