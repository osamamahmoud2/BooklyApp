import 'package:bokly/Core/utils/Api_Service.dart';
import 'package:bokly/Features/home/Data/Repos/Home_Repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton(HomeRepoImpl(ApiService(Dio())));
}
