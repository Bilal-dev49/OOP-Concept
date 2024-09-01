void main() {
  Book book1 = Book("Iqbal Shaheen", "Allama Iqbal", "1234567890", true);
  Book book2 = Book("ISSB", "Pak Army", "1234567891", true);
  Member member = Member("Bilal", "M101");
  Libaray libaray = Libaray();
  libaray.addBook(book1);
  libaray.addBook(book2);
  libaray.listBooks();
  libaray.loanBooks(book2, member);
  libaray.listloanBooks();
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
  List<Loan> loans = [];
  void addBook(Book book) {
    books.add(book);
  }

  void listBooks() {
    print("\n======+ Books in Libarary +======\n");
    for (var book in books) {
      print(
        "Title: ${book.title} \nAuthor: ${book.author}\nISBN: ${book.isbn}\nAvailable: ${book.isAvailable}\n------------------\n",
      );
    }
  }

  void loanBooks(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      print("${member.name} has loaned ${book.title}.");
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print("${book.title} is not available.");
    }
  }

  void listloanBooks() {
    print("\n======+ Loan Books of Libarary +======\n");
    for (var loan in loans) {
      print(
        "Title: ${loan.book.title} \nAuthor: ${loan.book.author}\nISBN: ${loan.book.isbn}\nAvailable: ${loan.book.isAvailable}\n------------------\n",
      );
    }
  }
}

class Member {
  String name;
  String id;

  Member(this.name, this.id);
}

class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;
  Loan(this.book, this.member, this.loanDate, [this.returnDate]);
}
