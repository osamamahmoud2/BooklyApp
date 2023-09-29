import 'package:bokly/Core/errors/failures.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSallerBooks();
  //lest side is the error side and the right side is the success side
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
