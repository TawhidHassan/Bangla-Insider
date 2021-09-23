import 'package:banglainsider/Bloc/User/user_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Ui/Widgets/Button/CustomButton/ProgressAnimatedButton.dart';
import 'package:banglainsider/Ui/Widgets/TextField/ThemeTextFields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/progress_button.dart';
class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emilController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();
  ButtonState progressButtonState = ButtonState.idle;
  final _globalkey = GlobalKey<FormState>();
  bool validate=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Text("পাসওয়ার্ড পুনরুদ্ধার",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Text("পাসওয়ার্ড পুনরুদ্ধার করতে আপনার ইমেল টাইপ করুন। পরবর্তী\nনির্দেশনা ইমেলে দেওয়া হবে",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
            ),
            Form(
              key: _globalkey,
              child: Column(
                children: [
                  NormalInputField(controller: emilController,icon: Icons.email,hintText: "আপনার ইমেল",),
                  ProgressAnimatedButton(text: "লগইন করুন",colors: kPrimaryColorx,progressButtonState: progressButtonState,tap: (){
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
          ],
        ),
      ),
    );
  }
}
