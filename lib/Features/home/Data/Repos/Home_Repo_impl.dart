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
  //Featch Best Saller Books
  Future<Either<Failures, List<BookModel>>> fetchBestSallerBooks() async {
    try {
      var data = await apiService.get(endpoint: 'volumes?q=Life Style');
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

  //Featch Featured Books
  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endpoint: 'volumes?q=intitle:Horror');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print('there was an error');
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(SeverFailure.fromDioError(e));
      }
      return left(SeverFailure(e.toString()));
    }
  }

  //Featch Similar Books
  @override
  Future<Either<Failures, List<BookModel>>> featchSimlirBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(endpoint: 'volumes?q=Networking');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {}
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
