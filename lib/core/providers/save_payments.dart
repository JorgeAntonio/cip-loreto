import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'pagos.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE pagos (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            colegiatura TEXT,
            cuota TEXT,
            estado TEXT,
            fechaPago TEXT
          )
        ''');
      },
    );
  }

  Future<Map<String, dynamic>?> loadPago(
      String colegiatura, String cuota) async {
    final db = await database;
    final result = await db.query(
      'pagos',
      where: 'colegiatura = ? AND cuota = ?',
      whereArgs: [colegiatura, cuota],
    );
    return result.isNotEmpty ? result.first : null;
  }

  Future<void> savePago(String colegiatura, String cuota, String estado) async {
    final db = await database;
    await db.insert(
      'pagos',
      {
        'colegiatura': colegiatura,
        'cuota': cuota,
        'estado': estado,
        'fechaPago': DateTime.now().toIso8601String()
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
