import 'package:bloc/bloc.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'best_saller_books_state.dart';

class BestSallerBooksCubit extends Cubit<BestSallerBooksState> {
  BestSallerBooksCubit() : super(BestSallerBooksInitial());
}
