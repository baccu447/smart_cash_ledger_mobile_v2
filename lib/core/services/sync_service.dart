import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SyncService {
  Timer? _timer;

  // Background SyncService connecting to Laravel /v1/sync API
  void startSync() {
    _timer = Timer.periodic(const Duration(minutes: 15), (timer) async {
      await performSync();
    });
  }

  Future<void> performSync() async {
    try {
      final url = Uri.parse('https://api.smartcashledger.com/v1/sync');
      
      // Fetch local unsynced data from Isar here
      final payload = {
        'transactions': [],
      };

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(payload),
      );

      if (response.statusCode == 200) {
        print('Background Sync Successful: \${response.body}');
      } else {
        print('Background Sync Failed: \${response.statusCode}');
      }
    } catch (e) {
      print('Sync Error: \$e');
    }
  }

  void stopSync() {
    _timer?.cancel();
  }
}