import 'package:app/pages/details.dart';
import 'package:app/pages/order.dart';
import 'package:app/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool pizza = false, burger = false, salad = false, icecream = false;

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: screenHeight * 0.05, // 5% of screen height
          left: screenWidth * 0.025, // 5% of screen width
          bottom: screenHeight*0.0125
          //right: screenWidth * 0.025, // 2.5% of screen width
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello vivek,", style: AppWidget.boldTextFeildStyle()),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Order()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.05),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Delicious Food", style: AppWidget.headlineTextFeildStyle()),
              Text("Discovery and Get Great Food",
                  style: AppWidget.lightlineTextFeildStyle()),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(right: screenWidth * 0.05,),
                child: showItem()),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                     GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 16.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/salad2.png",
                                  height: 150.0,
                                  width: 150.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "veegie taco hash",
                                  style: AppWidget.boldTextFeildStyle(),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightlineTextFeildStyle(),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "\$25",
                                  style: AppWidget.boldTextFeildStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 16.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad4.png",
                                height: 150.0,
                                width: 150.0,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Mix Veg Salad",
                                style: AppWidget.boldTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Spicy with Onion",
                                style: AppWidget.lightlineTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "\$25",
                                style: AppWidget.boldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 16.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/ice2.jpg",
                                height: 150.0,
                                width: 150.0,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Mix Veg Salad",
                                style: AppWidget.boldTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Spicy with Onion",
                                style: AppWidget.lightlineTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "\$25",
                                style: AppWidget.boldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.only(right:screenHeight*0.025, ), 
                child: Material(
                  elevation: 5.0 ,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("images/salad3.png"
                    ,height: 120,width: 120,fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("chickpea salad medtrian",style: AppWidget.boldTextFeildStyle(),))
                        ,
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("honey with chicken",style: AppWidget.lightlineTextFeildStyle(),)),
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("\$20",style: AppWidget.boldTextFeildStyle(),))
                    ],)
                  ],),),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.only(right:screenHeight*0.025, ), 
                child: Material(
                  elevation: 5.0 ,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("images/pizza1.jpeg"
                    ,height: 120,width: 120,fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("chickpea salad medtrian",style: AppWidget.boldTextFeildStyle(),))
                        ,
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("honey with chicken",style: AppWidget.lightlineTextFeildStyle(),)),
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("\$20",style: AppWidget.boldTextFeildStyle(),))
                    ],)
                  ],),),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.only(right:screenHeight*0.025, ), 
                child: Material(
                  elevation: 5.0 ,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("images/ice2.jpg"
                    ,height: 120,width: 120,fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("chocalte icecream",style: AppWidget.boldTextFeildStyle(),))
                        ,
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("with choco chips",style: AppWidget.lightlineTextFeildStyle(),)),
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("\$20",style: AppWidget.boldTextFeildStyle(),))
                    ],)
                  ],),),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.only(right:screenHeight*0.025, ), 
                child: Material(
                  elevation: 5.0 ,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("images/food.jpg"
                    ,height: 120,width: 120,fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("chickpea salad medtrian",style: AppWidget.boldTextFeildStyle(),))
                        ,
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("honey with chicken",style: AppWidget.lightlineTextFeildStyle(),)),
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("\$20",style: AppWidget.boldTextFeildStyle(),))
                    ],)
                  ],),),
                ),
              ),
              SizedBox(height: 5.0,),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            burger = false;
            salad = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            burger = true;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
