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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../view/pages/app/book/book_info_page.dart' as _i6;
import '../view/pages/app/book/view_pdf_page.dart' as _i7;
import '../view/pages/app/dashboard_page.dart' as _i4;
import '../view/pages/app/home/home_page.dart' as _i5;
import '../view/pages/app/user/user_page.dart' as _i8;
import '../view/pages/auth/login_page.dart' as _i2;
import '../view/pages/auth/register_page.dart' as _i3;
import '../view/pages/home/init_app.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    InitApp.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitApp(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    BookInfoRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookInfoRouteArgs>(
          orElse: () => BookInfoRouteArgs(
                  bookId: pathParams.getInt(
                'id',
                0,
              )));
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.BookInfoPage(
          key: args.key,
          bookId: args.bookId,
        ),
      );
    },
    ViewPdfRoute.name: (routeData) {
      final args = routeData.argsAs<ViewPdfRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ViewPdfPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    UserRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.UserPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/init-app',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          '#redirect',
          path: '',
          redirectTo: '/init-app',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          InitApp.name,
          path: '/init-app',
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i9.RouteConfig(
          RegisterRoute.name,
          path: '/register',
        ),
        _i9.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
          children: [
            _i9.RouteConfig(
              '#redirect',
              path: '',
              parent: DashboardRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            _i9.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: DashboardRoute.name,
            ),
            _i9.RouteConfig(
              BookInfoRoute.name,
              path: 'home/:id',
              parent: DashboardRoute.name,
            ),
            _i9.RouteConfig(
              ViewPdfRoute.name,
              path: 'home/:id/:pdf',
              parent: DashboardRoute.name,
            ),
            _i9.RouteConfig(
              UserRoute.name,
              path: 'user',
              parent: DashboardRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.InitApp]
class InitApp extends _i9.PageRouteInfo<void> {
  const InitApp()
      : super(
          InitApp.name,
          path: '/init-app',
        );

  static const String name = 'InitApp';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/dashboard-page',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.BookInfoPage]
class BookInfoRoute extends _i9.PageRouteInfo<BookInfoRouteArgs> {
  BookInfoRoute({
    _i10.Key? key,
    int bookId = 0,
  }) : super(
          BookInfoRoute.name,
          path: 'home/:id',
          args: BookInfoRouteArgs(
            key: key,
            bookId: bookId,
          ),
          rawPathParams: {'id': bookId},
        );

  static const String name = 'BookInfoRoute';
}

class BookInfoRouteArgs {
  const BookInfoRouteArgs({
    this.key,
    this.bookId = 0,
  });

  final _i10.Key? key;

  final int bookId;

  @override
  String toString() {
    return 'BookInfoRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i7.ViewPdfPage]
class ViewPdfRoute extends _i9.PageRouteInfo<ViewPdfRouteArgs> {
  ViewPdfRoute({
    _i10.Key? key,
    required String title,
  }) : super(
          ViewPdfRoute.name,
          path: 'home/:id/:pdf',
          args: ViewPdfRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'ViewPdfRoute';
}

class ViewPdfRouteArgs {
  const ViewPdfRouteArgs({
    this.key,
    required this.title,
  });

  final _i10.Key? key;

  final String title;

  @override
  String toString() {
    return 'ViewPdfRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i8.UserPage]
class UserRoute extends _i9.PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: 'user',
        );

  static const String name = 'UserRoute';
}
