import 'package:app/pages/bottomnav.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/signup.dart';
import 'package:app/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class loginIn extends StatefulWidget {
  const loginIn({super.key});

  @override
  State<loginIn> createState() => _loginInState();
}

class _loginInState extends State<loginIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
            Container(
              margin: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    "images/logo.png",
                    width: MediaQuery.of(context).size.width / 1.5,
                    fit: BoxFit.cover,
                  )),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Bottomnav()));
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Login",
                              style: AppWidget.boldTextFeildStyle(),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: AppWidget.boldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.email)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: AppWidget.boldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.password)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Text("Forgot Password ?",
                                  style: AppWidget.semiBoldTextFeildStyle()),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFff5c30),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                      child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'poppins'),
                                  ))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    child: Text(
                      "Don't have an account ? Sign Up",
                      style: AppWidget.semiBoldTextFeildStyle(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
