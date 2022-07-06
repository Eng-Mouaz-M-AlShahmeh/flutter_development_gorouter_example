/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_example/models/dash.dart';
import 'package:gorouter_example/views/extra_data_screen.dart';
import 'package:gorouter_example/views/go_screen.dart';
import 'package:gorouter_example/views/home.dart';
import 'package:gorouter_example/views/push_screen.dart';

// TODO: define app go_routes as you want
final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      path: '/push_screen',
      builder: (BuildContext context, GoRouterState state) =>
          const PushScreen(),
    ),
    GoRoute(
      path: '/go_screen',
      builder: (BuildContext context, GoRouterState state) => const GoScreen(),
    ),
    GoRoute(
        path: '/push_extra_data_screen',
        builder: (BuildContext context, GoRouterState state) {
          return ExtraDataScreen(dash: state.extra! as FlutterDash);
        }),
    GoRoute(
        path: '/go_extra_data_screen',
        builder: (BuildContext context, GoRouterState state) {
          return ExtraDataScreen(dash: state.extra! as FlutterDash);
        }),
  ],
);
