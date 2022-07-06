/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_example/routes/routes.dart';

void main() {
  // TODO: add this line if you want to hide hash sign # at web routes
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: modify material app with go_router attributes
    return MaterialApp.router(
      title: 'Flutter Development GoRouter Example',
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
