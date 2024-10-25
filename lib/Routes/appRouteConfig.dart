import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/home.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/routes/appRouteConstants.dart';
import 'package:flutter_portfolio/widgets/animatedtext.dart';
import 'package:flutter_portfolio/widgets/buttons.dart';
import 'package:flutter_portfolio/widgets/dismissable.dart';
import 'package:flutter_portfolio/widgets/imagePicker.dart';
import 'package:flutter_portfolio/widgets/tabBar.dart';

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
      GoRoute(
        name: MyAppRouteConstants.dismissableWidgetRouteName,
        path: '/dismissableWidget',
        builder: (context, state) => const MyDismissableWidget(),
      ),
      GoRoute(
        name: MyAppRouteConstants.imagePickerWidgetRouteName,
        path: '/imagePickerWidget',
        builder: (context, state) => const MyImagePickerWidget(),
      ),
      GoRoute(
        name: MyAppRouteConstants.tabBarWidgetRouteName,
        path: '/tabBarWidget',
        builder: (context, state) => const TabBarWidget(),
      ),
    ],
  );
}
