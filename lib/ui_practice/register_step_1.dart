import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newprojects/ui_practice/register_step_2.dart';


class RegisterFirstStep extends StatefulWidget {
  const RegisterFirstStep({Key key}) : super(key: key);

  @override
  _RegisterFirstStepState createState() => _RegisterFirstStepState();
}

class _RegisterFirstStepState extends State<RegisterFirstStep> {
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
        leading: Icon(
          Icons.arrow_back_rounded,
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
                padding: const EdgeInsets.only(top: 32.0, left: 16, right: 16),
                child: TextFormField(
                    decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0.w),
                  ),
                  // border:  OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2.0)),
                  hintText: 'Email address',
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Create password',
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
                      onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterSecondStep()));},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6), // <-- Radius
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
