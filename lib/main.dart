import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

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

