import 'package:flutter/material.dart';

class CustomerLedgerPage extends StatelessWidget {
  const CustomerLedgerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Customer Ledger (Udhar)'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          final isCredit = index % 3 == 0;
          return Card(
            color: const Color(0xFF1E1E1E),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: isCredit ? Colors.redAccent : Colors.greenAccent,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text('Customer ${index + 1}', style: const TextStyle(color: Colors.white)),
              subtitle: Text(isCredit ? 'Owes you: \$${index * 100}' : 'You owe: \$${index * 50}', style: const TextStyle(color: Colors.white70)),
              trailing: IconButton(
                icon: const Icon(Icons.message, color: Colors.blueAccent),
                onPressed: () {
                  // Send Reminder Logic
                },
              ),
              onTap: () {
                // Navigate to customer profile
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.person_add),
      ),
    );
  }
}