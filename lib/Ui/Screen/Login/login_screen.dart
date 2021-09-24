import 'package:banglainsider/Bloc/User/user_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Ui/Widgets/Button/CustomButton/ProgressAnimatedButton.dart';
import 'package:banglainsider/Ui/Widgets/TextField/ThemeTextFields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/progress_button.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emilController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();
  ButtonState progressButtonState = ButtonState.idle;
  final _globalkey = GlobalKey<FormState>();
  bool validate=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("লগইন করুন",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
          ),
          Center(
            child: Text("ইমেল এবং পাসওয়ার্ড দিয়ে লগইন করুন",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
          ),
          Form(
            key: _globalkey,
            child: Column(
              children: [
                NormalInputField(controller: emilController,icon: Icons.email,hintText: "আপনার ইমেল",),
                NormalInputField(controller: passwordController,icon: Icons.email,hintText: "পাসওয়ার্ড",),
                ProgressAnimatedButton(text: "লগইন করুন",colors: kPrimaryColorx,progressButtonState: progressButtonState,tap: (){
                  if (_globalkey.currentState!.validate()) {
                    setState(() {
                      validate = true;
                      progressButtonState = ButtonState.loading;
                      Navigator.pushReplacementNamed(context, HOME_PAGE);
                    });
                    BlocProvider.of<UserCubit>(context).logIn(emilController.text,passwordController.text,);

                  }
                 },
                ),
              ],
            ),
          ),
          Center(
            child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, FORGET_PASSWORD_PAGE);
                },
                child: Text("পাসওয়ার্ড ভুলে গেছেন?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
          ),
          SizedBox(height: 8,),
          Center(
            child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, REGISTER_PAGE);
                },
                child: Text("নতুন একাউন্ট খুলুন",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
          ),
        ],
      ),
    );
  }
}
