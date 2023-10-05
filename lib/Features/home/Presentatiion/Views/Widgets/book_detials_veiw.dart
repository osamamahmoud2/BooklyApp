import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_detials_view_body.dart';
import 'package:flutter/material.dart';

class BookDetialsVeiw extends StatelessWidget {
  const BookDetialsVeiw({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetialsVeiwBody(bookModel: bookModel),
    );
  }
}
