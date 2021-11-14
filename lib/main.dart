import 'dart:io';

import 'package:banglainsider/Bloc/CategoryNews/category_news_cubit.dart';
import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'Bloc/CategoryNews/category_news10_cubit.dart';
import 'Bloc/CategoryNews/category_news11_cubit.dart';
import 'Bloc/CategoryNews/category_news12_cubit.dart';
import 'Bloc/CategoryNews/category_news13_cubit.dart';
import 'Bloc/CategoryNews/category_news14_cubit.dart';
import 'Bloc/CategoryNews/category_news15_cubit.dart';
import 'Bloc/CategoryNews/category_news16_cubit.dart';
import 'Bloc/CategoryNews/category_news17_cubit.dart';
import 'Bloc/CategoryNews/category_news18_cubit.dart';
import 'Bloc/CategoryNews/category_news19_cubit.dart';
import 'Bloc/CategoryNews/category_news20_cubit.dart';
import 'Bloc/CategoryNews/category_news21_cubit.dart';
import 'Bloc/CategoryNews/category_news22_cubit.dart';
import 'Bloc/CategoryNews/category_news23_cubit.dart';
import 'Bloc/CategoryNews/category_news24_cubit.dart';
import 'Bloc/CategoryNews/category_news2_cubit.dart';
import 'Bloc/CategoryNews/category_news3_cubit.dart';
import 'Bloc/CategoryNews/category_news4_cubit.dart';
import 'Bloc/CategoryNews/category_news5_cubit.dart';
import 'Bloc/CategoryNews/category_news6_cubit.dart';
import 'Bloc/CategoryNews/category_news7_cubit.dart';
import 'Bloc/CategoryNews/category_news8_cubit.dart';
import 'Bloc/CategoryNews/category_news9_cubit.dart';
import 'Bloc/User/user_cubit.dart';
import 'Constants/Colors/colors.dart';
import 'Route/app_router.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);

  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.openBox('users');

  runApp(MyApp(
    router: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({Key? key, required this.router}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
        ),
        BlocProvider<CategoryNews2Cubit>(
          create: (context) => CategoryNews2Cubit(),
        ),
        BlocProvider<CategoryNewsCubit>(
          create: (context) => CategoryNewsCubit(),
        ),BlocProvider<CategoryNews3Cubit>(
          create: (context) => CategoryNews3Cubit(),
        ),BlocProvider<CategoryNews4Cubit>(
          create: (context) => CategoryNews4Cubit(),
        ),BlocProvider<CategoryNews5Cubit>(
          create: (context) => CategoryNews5Cubit(),
        ),BlocProvider<CategoryNews6Cubit>(
          create: (context) => CategoryNews6Cubit(),
        ),BlocProvider<CategoryNews7Cubit>(
          create: (context) => CategoryNews7Cubit(),
        ),BlocProvider<CategoryNews8Cubit>(
          create: (context) => CategoryNews8Cubit(),
        ),BlocProvider<CategoryNews9Cubit>(
          create: (context) => CategoryNews9Cubit(),
        ),BlocProvider<CategoryNews10Cubit>(
          create: (context) => CategoryNews10Cubit(),
        ),BlocProvider<CategoryNews11Cubit>(
          create: (context) => CategoryNews11Cubit(),
        ),BlocProvider<CategoryNews12Cubit>(
          create: (context) => CategoryNews12Cubit(),
        ),BlocProvider<CategoryNews13Cubit>(
          create: (context) => CategoryNews13Cubit(),
        ),BlocProvider<CategoryNews14Cubit>(
          create: (context) => CategoryNews14Cubit(),
        ),BlocProvider<CategoryNews15Cubit>(
          create: (context) => CategoryNews15Cubit(),
        ),BlocProvider<CategoryNews16Cubit>(
          create: (context) => CategoryNews16Cubit(),
        ),BlocProvider<CategoryNews17Cubit>(
          create: (context) => CategoryNews17Cubit(),
        ),BlocProvider<CategoryNews18Cubit>(
          create: (context) => CategoryNews18Cubit(),
        ),BlocProvider<CategoryNews19Cubit>(
          create: (context) => CategoryNews19Cubit(),
        ),BlocProvider<CategoryNews20Cubit>(
          create: (context) => CategoryNews20Cubit(),
        ),BlocProvider<CategoryNews21Cubit>(
          create: (context) => CategoryNews21Cubit(),
        ),BlocProvider<CategoryNews22Cubit>(
          create: (context) => CategoryNews22Cubit(),
        ),BlocProvider<CategoryNews23Cubit>(
          create: (context) => CategoryNews23Cubit(),
        ),BlocProvider<CategoryNews24Cubit>(
          create: (context) => CategoryNews24Cubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bangla Insider',
        theme: ThemeData(
          primarySwatch:kPrimaryColorx,
          // primaryColor: Color.fromARGB(255, 133, 4, 224),
        ),
        onGenerateRoute: router.generateRoute,
      ),
    );
  }
}

