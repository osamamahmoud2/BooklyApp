import 'package:bokly/Core/utils/Api_Service.dart';
import 'package:bokly/Core/utils/App_router.dart';

import 'package:bokly/Core/utils/constanats.dart';
import 'package:bokly/Features/home/Data/Repos/Home_Repo_impl.dart';
import 'package:bokly/Features/home/Presentatiion/Manger/BestSaller_Book_Cubit/best_saller_books_cubit.dart';
import 'package:bokly/Features/home/Presentatiion/Manger/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..featchFeatuedBooks(),
        ),
        BlocProvider(
          create: (context) => BestSallerBooksCubit(
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..featchBestSallerBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
