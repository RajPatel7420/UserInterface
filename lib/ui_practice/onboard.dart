import 'package:flutter/material.dart';
import 'package:newprojects/ui_practice/register_step_1.dart';

import 'login_page.dart';


class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                height: 707,
                width: double.infinity,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://1.bp.blogspot.com/-8oJXFfZMAfg/Vxug05yAMBI/AAAAAAAAAHE/JDhaeiZkM7I7jXGOXpRL11WtgeoTISmbACLcB/s1600/015.-Letter-R-Gaming-Concept-Logo.png'),
                  ),
                  Text(
                    "Raj",
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ],
              ),
              Positioned(
                  bottom: 20,
                  left: 16,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 28 / 2,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=976&q=80'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Raj Patel',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              '@rajpatel_17',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                  child: Center(
                    child: ButtonTheme(
                      minWidth: 167,
                      height: 52,
                      child: RaisedButton(
                        elevation: 0,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=> LoginPage()));
                        },
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                  child: Center(
                    child: ButtonTheme(
                      minWidth: 167,
                      height: 52,
                      child: RaisedButton(
                        color: Colors.black,
                        onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterFirstStep()));},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
