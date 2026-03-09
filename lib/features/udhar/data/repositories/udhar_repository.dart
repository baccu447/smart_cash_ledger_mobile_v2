class Customer {
  int id;
  String name;
  String phone;
  double balance;

  Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.balance,
  });
}

class UdharRepository {
  // Isar database dependency goes here
  
  Future<void> addCustomer(Customer customer) async {
    // Isar transaction
    print('Customer added: ${customer.name}');
  }

  Future<List<Customer>> getAllCustomers() async {
    // Isar query
    return [
      Customer(id: 1, name: 'Rahim', phone: '01712345678', balance: 500),
      Customer(id: 2, name: 'Karim', phone: '01812345678', balance: -200),
    ];
  }

  Future<void> updateCustomerBalance(int id, double newBalance) async {
    // Fetch and update
  }
}