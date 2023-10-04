import 'package:bokly/Core/errors/failures.dart';
import 'package:bokly/Core/utils/Api_Service.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSallerBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Horror');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(SeverFailure.fromDioError(e));
      }
      return left(SeverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:Horror');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(SeverFailure.fromDioError(e));
      }
      return left(SeverFailure(e.toString()));
    }
  }
}