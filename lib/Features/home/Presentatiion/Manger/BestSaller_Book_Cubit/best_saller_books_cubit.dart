import 'package:bloc/bloc.dart';

import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Data/Repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_saller_books_state.dart';

class BestSallerBooksCubit extends Cubit<BestSallerBooksState> {
  BestSallerBooksCubit(this.homeRepo) : super(BestSallerBooksInitial());
  HomeRepo homeRepo;
  Future<void> featchBestSallerBooks() async {
    emit(BestSallerBooksLoading());
    var result = await homeRepo.fetchBestSallerBooks();
    result.fold((failures) {
      emit(BestSallerBooksFailure(failures.errMassage));
    }, (books) {
      emit(BestSallerBooksSuccess(books));
    });
  }
}
