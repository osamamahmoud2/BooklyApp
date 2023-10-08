import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Manger/Similar_Books_Cubit/simliare_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimliareBooksCubit, SimliareBooksState>(
      builder: (context, state) {
        if (state is SimliareBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.builder(
                itemCount: state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 9, right: 9),
                    child: Listveiwitem(
                      url: state
                              .books[index].volumeInfo.imageLinks?.thumbnail ??
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Ferror-flat-red-color-icon-vector-6076345&psig=AOvVaw1anDbNWblVn5XJVx949pR6&ust=1696579509388000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKDjzO-r3oEDFQAAAAAdAAAAABAJ',
                    ),
                  );
                }),
          );
        } else if (state is SimliareBooksFailuer) {
          return Center(child: Text(state.errMassage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
    ;
  }
}
