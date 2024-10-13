import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFeildStyle(){
    return const TextStyle(
                color:  Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,  // 5% of screen width for font size
                fontFamily:'Poppins' ,
                fontWeight: FontWeight.bold,
              );
  }

  static TextStyle headlineTextFeildStyle(){
    return const TextStyle(
                color:  Color.fromARGB(255, 0, 0, 0),
                fontSize: 24.0,  // 5% of screen width for font size
                fontFamily:'Poppins' ,
                fontWeight: FontWeight.bold,
              );
  }
static TextStyle lightlineTextFeildStyle(){
    return const TextStyle(
                color: Colors.black38,
                fontSize: 15.0,  // 5% of screen width for font size
                fontWeight: FontWeight.w500,
                fontFamily:'Poppins' ,
              );
  }
  static TextStyle semiBoldTextFeildStyle(){
    return const TextStyle(
                color: Colors.black,
                fontSize: 15.0,  // 5% of screen width for font size
                fontWeight: FontWeight.bold,
                fontFamily:'Poppins' ,
              );
  }

}