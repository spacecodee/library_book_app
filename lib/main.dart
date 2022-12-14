import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(ProviderScope(child: MyApp()));
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  static const String title = 'Library Book App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: MyApp.title,
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
