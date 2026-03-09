import 'package:flutter/material.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({Key? key}) : super(key: key);

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  final _amountController = TextEditingController();
  final _noteController = TextEditingController();
  String _category = 'General';
  bool _isIncome = true;
  String? _imagePath;

  void _pickImage() {
    // Logic for image picker (e.g., ImagePicker package)
    setState(() {
      _imagePath = 'path/to/image.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Add Transaction'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    label: const Text('Income'),
                    selected: _isIncome,
                    onSelected: (val) => setState(() => _isIncome = true),
                    selectedColor: Colors.green,
                  ),
                  ChoiceChip(
                    label: const Text('Expense'),
                    selected: !_isIncome,
                    onSelected: (val) => setState(() => _isIncome = false),
                    selectedColor: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Amount',
                  labelStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _category,
                items: ['General', 'Food', 'Transport', 'Utilities']
                    .map((cat) => DropdownMenuItem(value: cat, child: Text(cat, style: const TextStyle(color: Colors.white))))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _category = val!;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Category',
                  labelStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Color(0xFF1E1E1E),
                ),
                dropdownColor: const Color(0xFF1E1E1E),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _noteController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Note',
                  labelStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: _pickImage,
                icon: const Icon(Icons.image),
                label: const Text('Attach Receipt'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              ),
              if (_imagePath != null) ...[
                const SizedBox(height: 16),
                Text('Image Selected: $_imagePath', style: const TextStyle(color: Colors.white70)),
              ],
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isIncome ? Colors.green : Colors.red,
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Text('Save Transaction', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}