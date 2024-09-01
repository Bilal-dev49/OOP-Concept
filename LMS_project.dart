void main() {
  Book book1 = Book("Iqbal Shaheen", "Allama Iqbal", "1234567890", true);
  Book book2 = Book("ISSB", "Pak Army", "1234567891", true);
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

class Libaray {
  List<Book> books = [];
  void addBook(Book book) {
    books.add(book);
  }
}
