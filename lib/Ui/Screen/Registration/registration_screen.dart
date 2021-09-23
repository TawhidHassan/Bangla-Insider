import 'package:banglainsider/Bloc/User/user_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Ui/Widgets/Button/CustomButton/ProgressAnimatedButton.dart';
import 'package:banglainsider/Ui/Widgets/TextField/ThemeTextFields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/progress_button.dart';
class RegistrerScreen extends StatefulWidget {
  @override
  _RegistrerScreenState createState() => _RegistrerScreenState();
}

class _RegistrerScreenState extends State<RegistrerScreen> {
  TextEditingController nameController=new TextEditingController();
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
            child: Text("রেজিস্ট্রেশন করুন",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
          ),
          Center(
            child: Text("রেজিস্ট্রেশন করতে আপনার নাম, ইমেল ও পাসওয়ার্ড দিন",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
          ),
          Form(
            key: _globalkey,
            child: Column(
              children: [
                NormalInputField(controller: nameController,icon: Icons.email,hintText: "আপনার নাম",),
                NormalInputField(controller: emilController,icon: Icons.email,hintText: "আপনার ইমেল",),
                NormalInputField(controller: passwordController,icon: Icons.email,hintText: "পাসওয়ার্ড",),
                ProgressAnimatedButton(text: "রেজিস্ট্রেশন করুন",colors: kPrimaryColorx,progressButtonState: progressButtonState,tap: (){
                  if (_globalkey.currentState!.validate()) {
                    setState(() {
                      validate = true;
                      progressButtonState = ButtonState.loading;
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
                  Navigator.pushNamed(context, LOGIN_PAGE);
                },
                child: Text("লগইন করুন?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
          ),

        ],
      ),
    );
  }
}
