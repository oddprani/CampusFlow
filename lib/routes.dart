import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'screens/login_page.dart';
import 'screens/admission_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/login': (context) => const Landing(),
  '/login-form': (context) => const Login(),
  '/admission-dashboard': (context) => const AdmissionDashboard(),
};
