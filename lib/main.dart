import 'package:flutter/material.dart';
import 'src/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routerDelegate: AppRouter().delegate(),
      routeInformationParser: AppRouter().defaultRouteParser(),
    );
  }
}
