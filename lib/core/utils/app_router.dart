import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:my_bookly/features/home/presentation/views/book_details_view.dart';
import 'package:my_bookly/features/home/presentation/views/home_view.dart';

import '../../features/search/presentaion/views/search_view.dart';

abstract class AppRouter {
  static String kHomeView = '/HomeView';
  static String kBookDetailsView = "/BookDetailsView";
  static String kSearchView = "/SearchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      )
    ],
  );
}
