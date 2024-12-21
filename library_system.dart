import 'Model/Book.dart';
import 'Model/Library.dart';
import 'Model/User.dart';

void main() {
  Library library = Library();

  library.addBook(Book('1', 'Dart Programming'));
  library.addBook(Book('2', 'Flutter Development'));

  library.users.add(User('1', 'Abdo'));
  library.users.add(User('2', 'Essam'));

  library.borrowBook('1', '1'); // Alice borrows Dart Programming
  library.borrowBook('2', '2'); // Bob borrows Flutter Development
  library.returnBook('1');      // Alice returns Dart Programming
  library.borrowBook('1', '2'); // Bob borrows Dart Programming

  library.displayInfo();
}