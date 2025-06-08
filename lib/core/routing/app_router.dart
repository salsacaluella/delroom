import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'route_names.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.dashboard,
    routes: [
      // Authentication routes
      GoRoute(
        path: RouteNames.login,
        name: 'login',
        builder: (context, state) => const Placeholder(), // TODO: Replace with LoginPage
      ),
      GoRoute(
        path: RouteNames.register,
        name: 'register',
        builder: (context, state) => const Placeholder(), // TODO: Replace with RegisterPage
      ),
      GoRoute(
        path: RouteNames.forgotPassword,
        name: 'forgotPassword',
        builder: (context, state) => const Placeholder(), // TODO: Replace with ForgotPasswordPage
      ),
      
      // Main app routes
      GoRoute(
        path: RouteNames.home,
        name: 'home',
        builder: (context, state) => const Placeholder(), // TODO: Replace with HomePage
      ),
      GoRoute(
        path: RouteNames.dashboard,
        name: 'dashboard',
        builder: (context, state) => const Placeholder(), // TODO: Replace with DashboardPage
      ),
      
      // Booking routes
      GoRoute(
        path: RouteNames.roomList,
        name: 'roomList',
        builder: (context, state) => const Placeholder(), // TODO: Replace with RoomListPage
      ),
      GoRoute(
        path: RouteNames.roomDetail,
        name: 'roomDetail',
        builder: (context, state) => const Placeholder(), // TODO: Replace with RoomDetailPage
      ),
      GoRoute(
        path: RouteNames.booking,
        name: 'booking',
        builder: (context, state) => const Placeholder(), // TODO: Replace with BookingPage
      ),
      
      // Checkout routes
      GoRoute(
        path: RouteNames.checkout,
        name: 'checkout',
        builder: (context, state) => const Placeholder(), // TODO: Replace with CheckoutPage
      ),
      GoRoute(
        path: RouteNames.payment,
        name: 'payment',
        builder: (context, state) => const Placeholder(), // TODO: Replace with PaymentPage
      ),
    ],
  );
}