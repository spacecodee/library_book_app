import 'package:auto_route/annotations.dart';
import 'package:library_book_app/src/view/pages/auth/login_page.dart';
import 'package:library_book_app/src/view/pages/auth/register_page.dart';
import 'package:library_book_app/src/view/pages/home/init_app.dart';

@MaterialAutoRouter(
  routes: [
    RedirectRoute(path: '', redirectTo: '/home'),
    AutoRoute(path: '/home', page: InitApp, initial: true),
    AutoRoute(path: '/login', page: LoginPage),
    AutoRoute(path: '/register', page: RegisterPage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
