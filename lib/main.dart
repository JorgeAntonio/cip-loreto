import 'package:cip_loreto/bootstrap.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'lib.dart';

void main() {
  // Inicializa `databaseFactory` para usar FFI
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  bootstrap(Environment.dev);
}
