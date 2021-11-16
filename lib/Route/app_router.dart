import 'package:banglainsider/Bloc/CategoryNews/category_news10_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news2_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news3_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news4_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news5_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news6_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news7_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news8_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news9_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news_cubit.dart';
import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Bloc/User/user_cubit.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Ui/Page/CategoryPageNews/cate_news.dart';
import 'package:banglainsider/Ui/Page/home_page.dart';
import 'package:banglainsider/Ui/Page/news_details.dart';
import 'package:banglainsider/Ui/Screen/ForgetPass/forget_pass.dart';
import 'package:banglainsider/Ui/Screen/Login/login_screen.dart';
import 'package:banglainsider/Ui/Screen/Registration/registration_screen.dart';
import 'package:banglainsider/Ui/Screen/splash_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final Map? args=settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => MultiBlocProvider(
              providers: [
                BlocProvider<HomeCubit>(
                  create: (context) => HomeCubit(),
                ),
                BlocProvider<CategoryNewsCubit>(
                  create: (context) => CategoryNewsCubit(),
                ),
                BlocProvider<CategoryNews2Cubit>(
                  create: (context) => CategoryNews2Cubit(),
                ), BlocProvider<CategoryNews3Cubit>(
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
                ),
              ],
              child: HomePage(),
            ));
      case NEWS_DETAILS_PAGE:
        return MaterialPageRoute(builder: (_) => NewsDetails(cover: args!['cover'],footerContent: args['footerContent'],));
      case NEWS_CAT_PAGE:
        return MaterialPageRoute(builder: (_) => CatNews(footerContent:args!['footerContent'],weather: args['weather'],menuId: args['menuId'],menu: args['menu'],submenu: args['submenu'],));
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
