import 'package:flutter/material.dart';
import 'package:shopbeer/gui/views/dashboard_view/dashboard_view.dart';
import 'package:shopbeer/gui/views/admin/login_view/login_view.dart';
import 'package:shopbeer/gui/views/admin/register_view/register_view.dart';
import 'package:shopbeer/gui/views/notifications/notifications_view.dart';
import 'package:shopbeer/gui/views/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routesApp() => <String, WidgetBuilder> {

  'splash_screen': ( _ ) => const SplashScreen(),
  'dashboard': ( _ ) => const DashboardView(),
  'login': ( _ ) => const LoginView(),
  'register': ( _ ) => const RegisterView(),
  'notifications': ( _ ) => const NotificationsView(),

};