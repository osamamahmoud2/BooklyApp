part of 'best_saller_books_cubit.dart';

sealed class BestSallerBooksState extends Equatable {
  const BestSallerBooksState();

  @override
  List<Object> get props => [];
}

final class BestSallerBooksInitial extends BestSallerBooksState {}

final class BestSallerBooksLoading extends BestSallerBooksState {}

final class BestSallerBooksSuccess extends BestSallerBooksState {
  final List<BookModel> books;

  const BestSallerBooksSuccess(this.books);
}

final class BestSallerBooksFailure extends BestSallerBooksState {
  final String errMassage;

  const BestSallerBooksFailure(this.errMassage);
}
