import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottom_nav_bar.dart';


class RegisterSecondStep extends StatefulWidget {
  const RegisterSecondStep({Key key}) : super(key: key);

  @override
  _RegisterSecondStepState createState() => _RegisterSecondStepState();
}

class _RegisterSecondStepState extends State<RegisterSecondStep> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        orientation: Orientation.portrait);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        iconTheme: IconThemeData(
            color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 104.0, left: 16),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 36.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter the User Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0.w),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0.w),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Center(
                  child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width.w,
                    height: 52.h,
                    child: RaisedButton(
                      color: Colors.black,
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>BottomNavBar()));},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6), // <-- Radius
                      ),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.only(left:16.0,right: 16.0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(text: 'By signing up, you agree to Photo’s '),
                      TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                      TextSpan(text: ' and  '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Privacy Policy"');
                            }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
