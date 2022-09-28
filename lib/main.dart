import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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
      title: 'Start Reading | Hello',
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
    );
  }
}
