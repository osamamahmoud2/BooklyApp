part of 'simliare_books_cubit.dart';

sealed class SimliareBooksState extends Equatable {
  const SimliareBooksState();

  @override
  List<Object> get props => [];
}

final class SimliareBooksInitial extends SimliareBooksState {}

final class SimliareBooksLouding extends SimliareBooksState {}

final class SimliareBooksFailuer extends SimliareBooksState {
  final String errMassage;

  const SimliareBooksFailuer(this.errMassage);
}

final class SimliareBooksSuccess extends SimliareBooksState {
  final List<BookModel> books;

  const SimliareBooksSuccess(this.books);
}
