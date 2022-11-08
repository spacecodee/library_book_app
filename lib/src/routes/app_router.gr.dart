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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../view/pages/app/book/book_info_page.dart' as _i7;
import '../view/pages/app/dashboard_page.dart' as _i4;
import '../view/pages/app/home/home_page.dart' as _i5;
import '../view/pages/app/library/library_page.dart' as _i6;
import '../view/pages/app/user/user_page.dart' as _i9;
import '../view/pages/app/view_pdf.dart' as _i8;
import '../view/pages/auth/login_page.dart' as _i2;
import '../view/pages/auth/register_page.dart' as _i3;
import '../view/pages/home/init_app.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    InitApp.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitApp(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    LibraryRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<LibraryRouteArgs>(
          orElse: () => LibraryRouteArgs(
                  bookId: pathParams.getInt(
                'id',
                0,
              )));
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.LibraryPage(
          key: args.key,
          bookId: args.bookId,
        ),
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
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.BookInfoPage(
          key: args.key,
          bookId: args.bookId,
        ),
      );
    },
    ViewPdf.name: (routeData) {
      final args = routeData.argsAs<ViewPdfArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ViewPdf(
          key: args.key,
          title: args.title,
        ),
      );
    },
    UserRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.UserPage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/init-app',
          fullMatch: true,
        ),
        _i10.RouteConfig(
          '#redirect',
          path: '',
          redirectTo: '/init-app',
          fullMatch: true,
        ),
        _i10.RouteConfig(
          InitApp.name,
          path: '/init-app',
        ),
        _i10.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i10.RouteConfig(
          RegisterRoute.name,
          path: '/register',
        ),
        _i10.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
          children: [
            _i10.RouteConfig(
              '#redirect',
              path: '',
              parent: DashboardRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            _i10.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: DashboardRoute.name,
            ),
            _i10.RouteConfig(
              LibraryRoute.name,
              path: 'library/:id',
              parent: DashboardRoute.name,
            ),
            _i10.RouteConfig(
              BookInfoRoute.name,
              path: 'book/:id',
              parent: DashboardRoute.name,
            ),
            _i10.RouteConfig(
              ViewPdf.name,
              path: 'book-read/:url',
              parent: DashboardRoute.name,
            ),
            _i10.RouteConfig(
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
class InitApp extends _i10.PageRouteInfo<void> {
  const InitApp()
      : super(
          InitApp.name,
          path: '/init-app',
        );

  static const String name = 'InitApp';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i10.PageRouteInfo<void> {
  const DashboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/dashboard-page',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.LibraryPage]
class LibraryRoute extends _i10.PageRouteInfo<LibraryRouteArgs> {
  LibraryRoute({
    _i11.Key? key,
    int bookId = 0,
  }) : super(
          LibraryRoute.name,
          path: 'library/:id',
          args: LibraryRouteArgs(
            key: key,
            bookId: bookId,
          ),
          rawPathParams: {'id': bookId},
        );

  static const String name = 'LibraryRoute';
}

class LibraryRouteArgs {
  const LibraryRouteArgs({
    this.key,
    this.bookId = 0,
  });

  final _i11.Key? key;

  final int bookId;

  @override
  String toString() {
    return 'LibraryRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i7.BookInfoPage]
class BookInfoRoute extends _i10.PageRouteInfo<BookInfoRouteArgs> {
  BookInfoRoute({
    _i11.Key? key,
    int bookId = 0,
  }) : super(
          BookInfoRoute.name,
          path: 'book/:id',
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

  final _i11.Key? key;

  final int bookId;

  @override
  String toString() {
    return 'BookInfoRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i8.ViewPdf]
class ViewPdf extends _i10.PageRouteInfo<ViewPdfArgs> {
  ViewPdf({
    _i11.Key? key,
    required String title,
  }) : super(
          ViewPdf.name,
          path: 'book-read/:url',
          args: ViewPdfArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'ViewPdf';
}

class ViewPdfArgs {
  const ViewPdfArgs({
    this.key,
    required this.title,
  });

  final _i11.Key? key;

  final String title;

  @override
  String toString() {
    return 'ViewPdfArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i9.UserPage]
class UserRoute extends _i10.PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: 'user',
        );

  static const String name = 'UserRoute';
}
