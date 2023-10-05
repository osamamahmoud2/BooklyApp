import 'package:bokly/Core/utils/Api_Service.dart';
import 'package:bokly/Features/Search/presentation/Search_view.dart';
import 'package:bokly/Features/Splash/Presentation/splash_Veiw.dart';
import 'package:bokly/Features/home/Data/Repos/Home_Repo_impl.dart';
import 'package:bokly/Features/home/Presentatiion/Manger/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_detials_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Views/home_veiw.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final kHomeView = '/HomeView';
  static final kBookDetialsView = '/BookDetils';
  static final KSearchView = '/SearchView';
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
            create: (context) => FeaturedBooksCubit(
                  HomeRepoImpl(
                    ApiService(
                      Dio(),
                    ),
                  ),
                )..featchFeatuedBooks(),
            child: const BookDetialsVeiw()),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
