import 'package:bokly/Features/home/Presentatiion/Manger/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  child: Listveiwitem(
                    url: state.books[index].volumeInfo!.imageLinks!.thumbnail,
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
