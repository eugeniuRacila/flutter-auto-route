// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../../screens/home/home_screen.dart' as _i1;
import '../../screens/main/main_screen.dart' as _i3;
import '../../screens/my_tasks/my_tasks_screen.dart' as _i4;
import '../../screens/profile/profile_screen.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    MainRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MyTasksRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    MyTasksRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.MyTasksScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              MainRouter.name,
              path: 'main',
              parent: HomeRoute.name,
              children: [
                _i6.RouteConfig(
                  MainRoute.name,
                  path: '',
                  parent: MainRouter.name,
                ),
                _i6.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: MainRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i6.RouteConfig(
              MyTasksRouter.name,
              path: 'my-tasks',
              parent: HomeRoute.name,
              children: [
                _i6.RouteConfig(
                  MyTasksRoute.name,
                  path: '',
                  parent: MyTasksRouter.name,
                ),
                _i6.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: MyTasksRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i6.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i6.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i6.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ProfileRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MainRouter extends _i6.PageRouteInfo<void> {
  const MainRouter({List<_i6.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          path: 'main',
          initialChildren: children,
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MyTasksRouter extends _i6.PageRouteInfo<void> {
  const MyTasksRouter({List<_i6.PageRouteInfo>? children})
      : super(
          MyTasksRouter.name,
          path: 'my-tasks',
          initialChildren: children,
        );

  static const String name = 'MyTasksRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i6.PageRouteInfo<void> {
  const ProfileRouter({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.MyTasksScreen]
class MyTasksRoute extends _i6.PageRouteInfo<void> {
  const MyTasksRoute()
      : super(
          MyTasksRoute.name,
          path: '',
        );

  static const String name = 'MyTasksRoute';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
