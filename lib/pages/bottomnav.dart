import 'package:app/pages/Wallet.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/order.dart';
import 'package:app/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';


class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int CurrentTabIndex=0;

  late List<Widget>pages;
  late Widget CurrentPage;
  late home homepage;
  late Profile profile;
  late Wallet wallet;
  late Order order;
  @override
  @override
  void initState() {
    homepage=home();
    profile=Profile();
    wallet=Wallet();
    order=Order();
    pages=[homepage,order,wallet,profile]; 
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65.0,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
              setState(() {
                CurrentTabIndex=index;
              });
        },
        items: [
        Icon(Icons.home_outlined,color: Colors.white),
        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
        Icon(Icons.wallet_outlined,color: Colors.white,),
        Icon(Icons.person_outlined,color: Colors.white,)
      ]),
      body: pages[CurrentTabIndex],
    );
  }
}


