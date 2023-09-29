import 'package:bokly/Features/Search/presentation/Search_view.dart';
import 'package:bokly/Features/Splash/Presentation/splash_Veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/book_detials_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/home_veiw.dart';
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
        builder: (context, state) => const BookDetialsVeiw(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
