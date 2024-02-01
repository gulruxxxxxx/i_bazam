import 'package:i_baza/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';

class LocalDataBase {
  static LocalDataBase? _database;
  static Store? _store;

  static Future<LocalDataBase> getInstance() async {
    if (_database == null) {
      _store = await _init();
      _database = LocalDataBase._();
    }
    return _database!;
  }

  static Future<Store> _init() async {
    final applicationDirectory = await getApplicationDocumentsDirectory();

    final store =
        await openStore(directory: '${applicationDirectory.path}/database');
    return store;
  }

  LocalDataBase._();
}
