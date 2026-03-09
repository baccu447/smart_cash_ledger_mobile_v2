import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Settings & Team Management'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            title: Text('Profile Settings', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: Text('Manage your account details', style: TextStyle(color: Colors.white54)),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
          ),
          const Divider(color: Colors.white24),
          const ListTile(
            title: Text('Team Management', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: Text('Add members, roles, permissions', style: TextStyle(color: Colors.white54)),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
          ),
          const Divider(color: Colors.white24),
          ListTile(
            title: const Text('Security', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: const Text('PIN/Biometric lock', style: TextStyle(color: Colors.white54)),
            trailing: Switch(
              value: true,
              onChanged: (val) {},
              activeColor: Colors.blueAccent,
            ),
          ),
          const Divider(color: Colors.white24),
          ListTile(
            title: const Text('Data Backup & Sync', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: const Text('Cloud storage sync configuration', style: TextStyle(color: Colors.white54)),
            trailing: const Icon(Icons.cloud_sync, color: Colors.blueAccent),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}