import 'package:auto_route/annotations.dart';
import 'package:library_book_app/src/view/pages/app/book/view_pdf_page.dart';
import 'package:library_book_app/src/view/pages/app/dashboard_page.dart';
import 'package:library_book_app/src/view/pages/app/home/home_page.dart';
import 'package:library_book_app/src/view/pages/app/library/library_page.dart';
import 'package:library_book_app/src/view/pages/app/user/user_page.dart';
import 'package:library_book_app/src/view/pages/auth/login_page.dart';
import 'package:library_book_app/src/view/pages/auth/register_page.dart';
import 'package:library_book_app/src/view/pages/home/init_app.dart';

@MaterialAutoRouter(
  routes: [
    RedirectRoute(path: '', redirectTo: '/init-app'),
    AutoRoute(path: '/init-app', page: InitApp, initial: true),
    AutoRoute(
      path: '/login',
      page: LoginPage,
    ),
    AutoRoute(path: '/register', page: RegisterPage),
    AutoRoute(path: '/dashboard-page', page: DashboardPage, children: [
      AutoRoute(path: 'home', page: HomePage),
      AutoRoute(path: 'home/:id', page: LibraryPage),
      AutoRoute(path: 'home/:id/:pdf', page: ViewPdfPage),
      AutoRoute(path: 'user', page: UserPage),
    ]),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
