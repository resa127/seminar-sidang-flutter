import 'package:go_router/go_router.dart';

import '../../presentation/views/booking_form_view.dart';
import '../../presentation/views/booking_success_view.dart';
import '../../presentation/views/detail_view.dart';
import '../../presentation/views/home_view.dart';
import '../../presentation/views/login_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/detail',
        builder: (context, state) => const DetailView(),
      ),
      GoRoute(
        path: '/booking',
        builder: (context, state) => const BookingFormView(),
      ),
      GoRoute(
        path: '/success',
        builder: (context, state) => const BookingSuccessView(),
      ),
    ],
  );
}