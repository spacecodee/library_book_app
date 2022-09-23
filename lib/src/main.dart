import 'package:flutter/material.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/view/pages/auth/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: 'Start Reading',
      theme: ThemeData(
        fontFamily: 'Graphik',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: SCColors.accentMaterial,
          accentColor: SCColors.accentMaterial,
          backgroundColor: SCColors.backgroundMaterial,
          errorColor: SCColors.errorMaterial,
          primaryColorDark: SCColors.secondaryMaterial,
          cardColor: SCColors.primaryMaterial,
        ),
      ),
      builder: (_, child) {
        return ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: child!,
        );
      },
    );
  }
}
