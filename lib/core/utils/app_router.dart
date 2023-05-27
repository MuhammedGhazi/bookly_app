import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:my_bookly/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static String kHomeView = '/HomeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
