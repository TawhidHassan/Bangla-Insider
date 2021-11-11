import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Bloc/User/user_cubit.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Ui/Page/home_page.dart';
import 'package:banglainsider/Ui/Screen/ForgetPass/forget_pass.dart';
import 'package:banglainsider/Ui/Screen/Login/login_screen.dart';
import 'package:banglainsider/Ui/Screen/Registration/registration_screen.dart';
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
              create: (context) => HomeCubit(),
              child: HomePage(),
            ));
      case LOGIN_PAGE:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case REGISTER_PAGE:
        return MaterialPageRoute(builder: (_) => RegistrerScreen());
      case FORGET_PASSWORD_PAGE:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      default:
        return null;
    }
  }
}
