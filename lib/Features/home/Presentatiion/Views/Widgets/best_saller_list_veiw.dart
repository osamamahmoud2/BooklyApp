import 'package:bokly/Features/home/Presentatiion/Manger/BestSaller_Book_Cubit/best_saller_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/best_saller_list_veiw_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSallerListVeiw extends StatelessWidget {
  const BestSallerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSallerBooksCubit, BestSallerBooksState>(
      builder: (context, state) {
        if (state is BestSallerBooksSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: BestSallerListVeiwItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is BestSallerBooksFailure) {
          return Text((state.errMassage));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
