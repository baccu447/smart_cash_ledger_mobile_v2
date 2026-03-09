import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'core/theme/app_theme.dart';
import 'presentation/pages/dashboard_page.dart';
import 'data/datasources/isar_database.dart';
import 'core/services/sync_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Isar DB
  await IsarDatabase.init();
  
  // Initialize AdMob
  await MobileAds.instance.initialize();
  
  // Start background sync service
  SyncService().startSync();
  
  runApp(const SmartCashLedgerApp());
}

class SmartCashLedgerApp extends StatelessWidget {
  const SmartCashLedgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Cash Ledger',
      theme: AppTheme.darkPremium,
      home: const DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
