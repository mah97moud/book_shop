import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/core/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookShopApp());
}

class BookShopApp extends StatelessWidget {
  const BookShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      routerConfig: AppRouter.router,
      // home: const SplashView(),
    );
  }
}
