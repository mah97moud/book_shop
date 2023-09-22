import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/core/utils/router/app_router.dart';
import 'package:book_shop/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/manager/new_books_cubit/new_books_cubit.dart';
import 'features/search/presentation/manager/search_books_bloc/search_books_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const BookShopApp());
}

class BookShopApp extends StatelessWidget {
  const BookShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewBooksCubit(
            getIt.get(),
          )..fetchNewBooks(),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get(),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => SearchBooksBloc(
            getIt.get(),
          ),
        ),
      ],
      child: MaterialApp.router(
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
      ),
    );
  }
}
