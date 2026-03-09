class Book {
  int id;
  String name;
  String type;
  String currency;
  DateTime createdAt;

  Book({
    required this.id,
    required this.name,
    required this.type,
    required this.currency,
    required this.createdAt,
  });
}

class BookRepository {
  // Isar instance integration goes here
  // final Isar isar;
  
  // BookRepository(this.isar);

  Future<void> addBook(Book book) async {
    // await isar.writeTxn(() async {
    //   await isar.books.put(book);
    // });
    print('Book added: ${book.name}');
  }

  Future<List<Book>> getAllBooks() async {
    // return await isar.books.where().findAll();
    return [
      Book(id: 1, name: 'Personal Ledger', type: 'Personal', currency: 'BDT', createdAt: DateTime.now()),
      Book(id: 2, name: 'Shop Khata', type: 'Shop', currency: 'BDT', createdAt: DateTime.now()),
    ];
  }

  Future<void> updateBook(Book book) async {
    // await isar.writeTxn(() async {
    //   await isar.books.put(book);
    // });
  }

  Future<void> deleteBook(int id) async {
    // await isar.writeTxn(() async {
    //   await isar.books.delete(id);
    // });
  }
}