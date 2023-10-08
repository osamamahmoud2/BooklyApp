import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Manger/Similar_Books_Cubit/simliare_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_detials_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetialsVeiw extends StatefulWidget {
  const BookDetialsVeiw({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetialsVeiw> createState() => _BookDetialsVeiwState();
}

class _BookDetialsVeiwState extends State<BookDetialsVeiw> {
  @override
  void initState() {
    BlocProvider.of<SimliareBooksCubit>(context).featchSimlirBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetialsVeiwBody(bookModel: widget.bookModel),
    );
  }
}
