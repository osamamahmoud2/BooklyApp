import 'package:bloc/bloc.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../Data/Repos/home_repo.dart';

part 'simliare_books_state.dart';

class SimliareBooksCubit extends Cubit<SimliareBooksState> {
  SimliareBooksCubit(this.homeRepo) : super(SimliareBooksInitial());
  HomeRepo homeRepo;
  Future<void> featchSimlirBooks({required String category}) async {
    emit(SimliareBooksLouding());
    var result = await homeRepo.featchSimlirBooks(category: category);
    result.fold((failures) {
      emit(SimliareBooksFailuer(failures.errMassage));
    }, (books) {
      emit(SimliareBooksSuccess(books));
    });
  }
}
