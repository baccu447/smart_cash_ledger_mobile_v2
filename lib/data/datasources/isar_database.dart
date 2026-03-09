import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
// import '../models/transaction.dart'; // To be implemented

class IsarDatabase {
  static late Isar isar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    
    // Initialize Isar with Offline-first Data management.
    // The schemas would go here (e.g., [TransactionSchema])
    isar = await Isar.open(
      [
        // TransactionSchema, 
      ],
      directory: dir.path,
    );
  }

  // Future<void> addTransaction(Transaction txn) async {
  //   await isar.writeTxn(() async {
  //     await isar.transactions.put(txn);
  //   });
  // }
}