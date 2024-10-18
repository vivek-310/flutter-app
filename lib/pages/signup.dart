import 'package:app/pages/bottomnav.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/login.dart';

import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import '../widgets/widget_support.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // String email="",password="",name="";

  // TextEditingController namecontroller=new TextEditingController();
  // TextEditingController passwordcontroller=new TextEditingController();
  // TextEditingController mailcontroller=new TextEditingController();

  // final _formkey=GlobalKey<FormState>();

  // registration() async{

  //   if(password!=null){
  //     try {
  //       UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  //       ScaffoldMessenger.of(context).showSnackBar((SnackBar(
  //         backgroundColor: Colors.redAccent,  
  //       content: Text(
  //         "registration sucessful",
  //         style: TextStyle(fontSize: 20.0),),)));
  //         String Id= randomAlphaNumeric(10);

  //          Map<String, dynamic> addUserInfo = {
  //         "Name": namecontroller.text,
  //         "Email": mailcontroller.text,
  //         "Wallet": "0",
  //         "Id": Id,
  //       };
  //         //await DatabaseMethods().addUserDetail(addUserInfo, Id);
          
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Bottomnav()));
  //     } on FirebaseException catch(e){
  //       if(e.code=='weak-password'){
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("password is too weak",style: TextStyle(fontSize: 18.0),),));
  //       }else if (e.code == "email-already-in-use") {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //             backgroundColor: Colors.orangeAccent,
  //             content: Text(
  //               "Account Already exsists",
  //               style: TextStyle(fontSize: 18.0),
  //             )));
  //       }
  //     }
  //   }

  // }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Form(
//                        key: _formkey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Sign Up",
                              style: AppWidget.boldTextFeildStyle(),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
  //                            controller: namecontroller,
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'enter valid name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: 'Name',
                                  hintStyle: AppWidget.boldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.person)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
    //                          controller: mailcontroller,
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'please enter email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: AppWidget.boldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.email)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
      //                        controller: passwordcontroller,
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'enter valid name';
                                }
                                return null;
                              },
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
                            //GestureDetector(
                        //      onTap: () {
        //                        if (_formkey.currentState!.validate()) {
          //                        setState(() {
            //                        email = mailcontroller.text;
              //                      name = namecontroller.text;
                //                    password = passwordcontroller.text;
                  //                });
                    //            }
                      //          registration();
                          //    },
                              // child:
                               GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loginIn()));
                                },
                                 child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 10.0),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFff5c30),
                                          borderRadius: BorderRadius.circular(20)),
                                      child: Center(
                                          child: Text(
                                        "SIGN UP",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'poppins'),
                                      ))),
                                                               ),
                               ),
                            //)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginIn()));
                    },
                    child: Text(
                      "Already  an account ? Login",
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