import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/home.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/routes/appRouteConstants.dart';
import 'package:flutter_portfolio/widgets/animatedtext.dart';
import 'package:flutter_portfolio/widgets/buttons.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeWidgetRouteName,
        path: '/',
        builder: (context, state) => HomeWidget(),
      ),
      GoRoute(
        name: MyAppRouteConstants.animatedWidgetRouteName,
        path: '/animatedWidget',
        builder: (context, state) => const AnimatedTextWidget(),
      ),
      GoRoute(
        name: MyAppRouteConstants.buttonWidgetRouteName,
        path: '/buttonsWidget',
        builder: (context, state) => const ButtonWidget(),
      ),
    ],
  );
}
