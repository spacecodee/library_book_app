import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/pages/app/book/book_info_page.dart';

class LibraryPage extends StatelessWidget {
  final int bookId;

  const LibraryPage({
    Key? key,
    @PathParam('id') this.bookId = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("id: $bookId");
    return const BookInfoPage();
  }
}
