import 'package:flutter_portfolio/widgets/home.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/routes/appRouteConstants.dart';
import 'package:flutter_portfolio/widgets/animatedtext.dart';
import 'package:flutter_portfolio/widgets/buttons.dart';
import 'package:flutter_portfolio/widgets/dismissable.dart';
import 'package:flutter_portfolio/widgets/imagePicker.dart';
import 'package:flutter_portfolio/widgets/tabBar.dart';
import 'package:flutter_portfolio/widgets/snackBar.dart';
import 'package:flutter_portfolio/widgets/dropdown.dart';
import 'package:flutter_portfolio/widgets/bottomNavBar.dart';
import 'package:flutter_portfolio/widgets/formWidget.dart';
import 'package:flutter_portfolio/widgets/listGrid.dart';
import 'package:flutter_portfolio/widgets/actionSlider.dart';
import 'package:flutter_portfolio/widgets/carouselView.dart';
import 'errorPage.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    // Only work if initialRoute is not defined
    errorBuilder: (context, state) => const Error404Screen(),
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeWidgetRouteName,
        path: '/a',
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
      GoRoute(
        name: MyAppRouteConstants.snackBarWidgetRouteName,
        path: '/snackBarWidget',
        builder: (context, state) => const MySnackBarWidget(),
      ),
      GoRoute(
        name: MyAppRouteConstants.dropDownWidgetRouteName,
        path: '/dropDownWidget',
        builder: (context, state) => const DropdownMenuExample(),
      ),
      GoRoute(
        name: MyAppRouteConstants.bottomNavBarRouteName,
        path: '/bottomNavBar',
        builder: (context, state) => const BottomNav(),
      ),
      GoRoute(
        name: MyAppRouteConstants.formWidgetRouteName,
        path: '/formWidget',
        builder: (context, state) => const MyFormWidget(),
      ),
      GoRoute(
        name: MyAppRouteConstants.listGridRouteName,
        path: '/listGrid',
        builder: (context, state) => ListGridView(),
      ),
      GoRoute(
        name: MyAppRouteConstants.actionSliderRouteName,
        path: '/actionSlider',
        builder: (context, state) => ActionSliderWidget(),
      ),
      GoRoute(
        name: MyAppRouteConstants.carouselViewRouteName,
        // path: '/carouselView',
        path: '/',
        builder: (context, state) => carouselView(),
      ),
    ],
  );
}
