import 'package:bokly/Core/utils/App_router.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Manger/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/Book_rating.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListVeiw extends StatelessWidget {
  const FeaturedBooksListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.31,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 9, right: 9),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetialsView,
                          extra: state.books[index]);
                    },
                    child: Listveiwitem(
                      url: state
                              .books[index].volumeInfo.imageLinks?.thumbnail ??
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Ferror-flat-red-color-icon-vector-6076345&psig=AOvVaw1anDbNWblVn5XJVx949pR6&ust=1696579509388000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKDjzO-r3oEDFQAAAAAdAAAAABAJ',
                    ),
                  ),
                );
              }),
        );
      } else if (state is FeaturedBooksFailure) {
        return Center(
          child: Text(state.errMassage),
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
