import 'package:flutter/material.dart';

class BooksListPage extends StatelessWidget {
  const BooksListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Books List'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0xFF1E1E1E),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.book, color: Colors.blueAccent),
              title: Text('Book ${index + 1}', style: const TextStyle(color: Colors.white)),
              subtitle: const Text('Tap to view or edit details', style: TextStyle(color: Colors.white70)),
              trailing: IconButton(
                icon: const Icon(Icons.edit, color: Colors.white),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}