import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'screens/login_page.dart';
import 'screens/office_dashboard.dart';
import 'screens/admission_page.dart';

void main() {
  runApp(const CollegeLoginApp());
}

class CollegeLoginApp extends StatelessWidget {
  const CollegeLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      initialRoute: '/',
      routes: {
        '/': (context) => const FixedAspectCanvas(child: LandingPage()),
        '/login': (context) => const FixedAspectCanvas(child: LoginPage()),
        '/dashboard': (context) => const FixedAspectCanvas(child: DashboardPage()),
        '/admission': (context) => const FixedAspectCanvas(child: AdmissionPage()),
      },
    );
  }
}

/// Keeps a logical 1920x1080 canvas and scales it proportionally.
class FixedAspectCanvas extends StatelessWidget {
  final Widget child;
  const FixedAspectCanvas({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          const aspect = 1920 / 1080;
          double width = constraints.maxWidth;
          double height = width / aspect;
          if (height > constraints.maxHeight) {
            height = constraints.maxHeight;
            width = height * aspect;
          }
          return Center(
            child: SizedBox(
              width: width,
              height: height,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 1920,
                  height: 1080,
                  child: child,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
