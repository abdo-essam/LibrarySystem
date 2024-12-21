
class Book {
  final String id;
  final String title;
  bool borrowed;

  Book(this.id, this.title, {this.borrowed = false});

  void displayInfo() {
    print('Book ID: $id, Title: $title, Borrowed: $borrowed');
  }
}