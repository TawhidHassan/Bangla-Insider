import 'package:banglainsider/Bloc/User/user_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Ui/Page/home_page.dart';
import 'package:banglainsider/Ui/Screen/splash_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments as Map;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: HomePage(),
            ));

      default:
        return null;
    }
  }
}
