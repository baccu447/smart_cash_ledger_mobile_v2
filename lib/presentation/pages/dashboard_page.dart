import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/theme/app_theme.dart';
import '../widgets/admob_placeholder.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Cash Ledger'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 20),
          _buildRadialProgress().animate().fade(duration: 800.ms).scale(),
          const SizedBox(height: 40),
          const Text('Recent Transactions', 
            style: TextStyle(color: AppTheme.goldAccent, fontSize: 18, fontWeight: FontWeight.bold)
          ).animate().slideX(duration: 500.ms, begin: -0.2),
          const SizedBox(height: 20),
          _buildTransactionTile('Groceries', '-$120.00').animate(delay: 200.ms).fadeIn().slideY(),
          _buildTransactionTile('Salary', '+$5,000.00').animate(delay: 300.ms).fadeIn().slideY(),
          _buildTransactionTile('Rent', '-$1,500.00').animate(delay: 400.ms).fadeIn().slideY(),
          const SizedBox(height: 40),
          const AdmobBannerPlaceholder().animate().fadeIn(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ).animate().scale(delay: 500.ms),
    );
  }

  Widget _buildRadialProgress() {
    return SizedBox(
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: [
                PieChartSectionData(
                  color: AppTheme.goldAccent,
                  value: 65,
                  title: '65%',
                  radius: 20,
                  titleStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppTheme.darkBackground),
                ),
                PieChartSectionData(
                  color: Colors.grey[800],
                  value: 35,
                  title: '',
                  radius: 20,
                ),
              ],
            ),
          ),
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Balance', style: TextStyle(color: Colors.white70, fontSize: 14)),
              Text('\$3,380.00', style: TextStyle(color: AppTheme.goldAccent, fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionTile(String title, String amount) {
    bool isIncome = amount.startsWith('+');
    return Card(
      color: const Color(0xFF14141E),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isIncome ? Colors.green.withOpacity(0.2) : Colors.red.withOpacity(0.2),
          child: Icon(
            isIncome ? Icons.arrow_downward : Icons.arrow_upward,
            color: isIncome ? Colors.green : Colors.red,
          ),
        ),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        trailing: Text(amount, style: TextStyle(
          color: isIncome ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        )),
      ),
    );
  }
}