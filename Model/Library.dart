
import 'Book.dart';
import 'User.dart';

class Library {
  List<Book> books = [];
  List<User> users = [];

  void addBook(Book book) {
    books.add(book);
    print('Added book: ${book.title}');
  }


  Book? _findBookById(String bookId) {
    for (var book in books) {
      if (book.id == bookId) {
        return book;
      }
    }
    return null;
  }

  void borrowBook(String bookId, String userId) {
    Book? book = _findBookById(bookId);
    if (book == null) {
      print('Book not found.');
      return;
    }
    if (book.borrowed) {
      print('Book is already borrowed.');
      return;
    }
    book.borrowed = true;
    print('Book borrowed: ${book.title} by User ID: $userId');
  }

  void returnBook(String bookId) {
    Book? book = _findBookById(bookId);
    if (book == null) {
      print('Book not found.');
      return;
    }
    if (!book.borrowed) {
      print('Book was not borrowed.');
      return;
    }
    book.borrowed = false;
    print('Book returned: ${book.title}');
  }



  void displayInfo() {
    print('Library Books:');
    for (var book in books) {
      book.displayInfo();
    }
    print('Library Users:');
    for (var user in users) {
      user.displayInfo();
    }
  }
}
