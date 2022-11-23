import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  final int bookId;

  const LibraryPage({
    Key? key,
    @PathParam('bookId') this.bookId = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("bookId 🙋🏽‍♂️🙋🏽‍♂️: $bookId");
    return Container();
  }
}
