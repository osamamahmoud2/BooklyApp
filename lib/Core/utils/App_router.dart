import 'package:bokly/Core/utils/Api_Service.dart';
import 'package:bokly/Features/Search/presentation/Search_view.dart';
import 'package:bokly/Features/Splash/Presentation/splash_Veiw.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Data/Repos/Home_Repo_impl.dart';
import 'package:bokly/Features/home/Presentatiion/Manger/Similar_Books_Cubit/simliare_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Views/book_detials_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Views/home_veiw.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetialsView = '/BookDetils';
  static const KSearchView = '/SearchView';
  BookModel? bookModel;
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashVeiw(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const Homeveiw(),
      ),
      GoRoute(
        path: kBookDetialsView,
        builder: (context, state) => BlocProvider(
            create: (context) =>
                SimliareBooksCubit(HomeRepoImpl(ApiService(Dio()))),
            child: BookDetialsVeiw(bookModel: state.extra as BookModel)),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
