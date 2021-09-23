// ignore_for_file: file_names, unnecessary_new, prefer_const_constructors

import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class ProgressAnimatedButton extends StatefulWidget {

  final String text;
  final Function tap;
  final Color colors;
  final  ButtonState progressButtonState;
  const ProgressAnimatedButton({Key? key, this.text="normal",  required this.tap, required this.colors, required this.progressButtonState}) : super(key: key);

  @override
  _ProgressAnimatedButtonState createState() => _ProgressAnimatedButtonState();
}

class _ProgressAnimatedButtonState extends State<ProgressAnimatedButton> {


   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(
                    (ButtonState.idle == widget.progressButtonState ? 18.0 : 0.0)),
                child: ProgressButton(
                  stateWidgets: {
                    ButtonState.idle: Text(
                      widget.text ,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    ButtonState.loading: Text(
                      "Loading",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    ButtonState.fail: Text(
                      "Fail",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    ButtonState.success: Text(
                      "Success",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  },
                  stateColors: {
                    ButtonState.idle: widget.colors,
                    ButtonState.loading: Colors.blue.shade300,
                    ButtonState.fail: Colors.red.shade300,
                    ButtonState.success: Colors.green.shade400,
                  },
                  onPressed: widget.tap,
                  state: widget.progressButtonState,
                  padding: EdgeInsets.all(8.0),
                )
              ),
            ],
          ),
        ),
      );
  }


}