import "package:udemy_clone/src/core/constants/context_extension.dart";
import "package:udemy_clone/src/core/widgets/text_widget.dart";
import "package:udemy_clone/src/feature/entry/view/on_boarding_page.dart";
import "package:udemy_clone/src/feature/entry/view/splash_page.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../feature/home_navigation.dart";
import "app_route_name.dart";

final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell-key');

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell-key');

@immutable
final class AppRouter {
  const AppRouter._();

  static final GoRoute cart = GoRoute(
    parentNavigatorKey: appNavigatorKey,
    path: AppRouteName.cart,
    pageBuilder: (BuildContext context, GoRouterState state) {
      return  MaterialPage(child:  Scaffold(body: Center(child: CustomTextWidget("Featured", textColor: context.appTheme.secondary))));
    },
  );




  static final GoRouter router = GoRouter(
    navigatorKey: appNavigatorKey,
    initialLocation: AppRouteName.splash,
    routes: [

      // splash
      GoRoute(
        path: AppRouteName.splash,
        builder: (context, state) => const SplashPage(),
      ),

      // onboarding
      GoRoute(
        path: AppRouteName.welcomePage,
        builder: (context, state) => const OnBoardingPage(),
      ),


      /// Patient Shell Route
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: appNavigatorKey,
        builder: (context, state, navigationShell) => HomeNavigation(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorKey,
            routes: [
              GoRoute(
                path: AppRouteName.featured,
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: Scaffold(body: Center(child: CustomTextWidget("Featured", textColor: context.appTheme.secondary)))),
                routes: const [],
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteName.search,
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: Scaffold(body: Center(child: CustomTextWidget("Search", textColor: context.appTheme.secondary)))),
                routes: const [],
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteName.myLearning,
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: Scaffold(body: Center(child: CustomTextWidget("My learning", textColor: context.appTheme.secondary)))),
                routes: const [],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteName.wishlist,
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: Scaffold(body: Center(child: CustomTextWidget("Featured", textColor: context.appTheme.secondary)))),
                routes: const [],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteName.account,
                pageBuilder: (context, state) =>
                    NoTransitionPage(child: Scaffold(body: Center(child: CustomTextWidget("Featured", textColor: context.appTheme.secondary)))),
                routes: const [],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
