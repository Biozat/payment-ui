import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12
      ),
      margin: EdgeInsets.only(left: 20, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // back button and Payment text
          Container(
            margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                Text(
                  "Payment",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),

          // container container card pin number
          Container(
            height: 180,
            margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            padding: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(45)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text("Credit Card", style: TextStyle(color: Colors.white),),
                SizedBox(height: 25,),
                Text("3541  4485402  00436", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Credit Card", style: TextStyle(color: Colors.white),),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/image/mastercard.png"
                          )
                        )
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          // Choose your payment method
          Container(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Payment Method",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),

                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white30

                            /*
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/image/mastercard.png"
                              )

                          )

                           */
                          ),
                          child: Image.asset("assets/image/mastercard.png"),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                  color: Colors.white30

                            /*
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/image/mastercard.png"
                              )

                          )

                           */
                          ),
                          child: Image.asset("assets/image/apple.png"),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            color: Colors.white30

                            /*
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/image/mastercard.png"
                              )

                          )

                           */
                          ),
                          child: Image.asset("assets/image/paypal.png"),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white30

                            /*
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/image/mastercard.png"
                              )

                          )

                           */
                          ),
                          child: Icon(Icons.more_horiz, color: Colors.black45, size: 35,),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Spacer(),

          // Pay button
          Container(
            height: 200,
            padding: EdgeInsets.all(5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "\$178.70",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black87
                    ),
                    child: TextButton.icon(     // <-- TextButton
                      onPressed: () {},
                      icon: Icon(
                        Icons.payment,
                        size: 24.0,
                        color: Colors.white,
                      ),
                      label: Text('Pay', style: TextStyle(color: Colors.white),),
                    ),
                  )
                 /* Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: Colors.black87

                    ),
                    child: Text("Pay", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white), textAlign: TextAlign.center,),
                  ),*/
                ],
              ),
          ),

        ],
      ),

    );
  }
}
