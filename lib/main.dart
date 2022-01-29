import 'dart:ui';

import 'package:banking_app/parts/battomNavBAr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Expanded(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.indigo.shade900,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.centerLeft,
            colors: [
              Colors.amber.shade900,
              Colors.red.shade200,
            ],
          ),
        ),
      )),
      //////////////////////////////////////////////////////////////////
      //////////////////////////////////////////////////////////////////
      /////////////////////////////////////////////////////////////////
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Linda",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 45,
                    height: 16,
                    child: Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.indigo.shade900,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.amber.shade900,
                              Colors.red.shade200,
                            ],
                          )),
                      child: Center(
                        child: Text(
                          "PLUS",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  decoration: new BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.cyan[200],
                  ),
                  child: Icon(Icons.person),
                ),
              )
            ],
          ),
        ),
        body: PageView(

            /// [PageView.scrollDirection] defaults to [Axis.horizontal].
            /// Use [Axis.vertical] to scroll vertically.
            controller: controller,
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: SizedBox(
                        height: 65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '513.88\$',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text("Your Balance",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Text(
                                  "Cards",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey.shade900),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 80,
                                    height: (MediaQuery.of(context).size.width -
                                            80) /
                                        1.7,
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.indigo.shade900,
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Colors.amber.shade900,
                                            Colors.red.shade200,
                                          ],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 12,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40.0, left: 40, right: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("CARDNAME",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white)),
                                          Text("DEBIT CARD",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white38)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text("****",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.white)),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text("****",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.white)),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text("****",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.white)),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text("4265",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("CARDHOLDER",
                                                        style: TextStyle(
                                                            fontSize: 9,
                                                            color: Colors
                                                                .white38)),
                                                    Text("Linda Thompson",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white)),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    child: Text("EXPIRES",
                                                        style: TextStyle(
                                                            fontSize: 9,
                                                            color: Colors
                                                                .white38)),
                                                  ),
                                                  Text("2/24",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.white)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Container(
                                  //   width: MediaQuery.of(context).size.width - 80,
                                  //   height: (MediaQuery.of(context).size.width - 80) /
                                  //       1.7,
                                  //   decoration: new BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(20.0),
                                  //     color: Colors.black,
                                  //   ),
                                  // )
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "Card Info",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey.shade900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  height: 55,
                                  decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey[50],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        new RotationTransition(
                                            turns: new AlwaysStoppedAnimation(
                                                45 / 360),
                                            child: Icon(Icons
                                                .airplanemode_active_rounded)),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "Travel Card",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  height: 55,
                                  decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey[50],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.wifi),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "Online Payments",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  height: 55,
                                  decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey[50],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.moving_rounded),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "Investments",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Transactions",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey.shade900),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Sort by",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          color: Colors.amber.shade900,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(Icons.keyboard_arrow_down_rounded)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          ///////////////////////////////////////////////////
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey[50],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Chester Johnson",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        ),
                                        Text(
                                          "Just now",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "+50.00\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //////////////////////////////////////////////
                          ///
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey[50],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Jason Clark",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        ),
                                        Text(
                                          "Just now",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "-46.79\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ///////////////////////////////////////////
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "29 Jan 2022",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey[50],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Taxi",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        ),
                                        Text(
                                          "19:12",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "-6.59\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ), //////////////////
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey[50],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Katelyn Gray",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        ),
                                        Text(
                                          "15:23",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "-146.90\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ), //////////////////////////////
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey[50],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Alex Griffits",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        ),
                                        Text(
                                          "12:24",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "-645.00\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //// //// //// //// //// //// //// //// //// //// //// ////
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "28 Jan 2022",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 0,
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey[50],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Suneil England",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        ),
                                        Text(
                                          "9:12",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "+1,109.00\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          ////////////////////////////////////////////
                          ///
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueGrey[50],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kobe-Jordan Watson",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900),
                                        ),
                                        Text(
                                          "5:23",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "+612.00\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]),
        bottomNavigationBar: battomnavBar(),
      ),
    ]);
  }
}
////Colors.amber.shade900,
///       Colors.red.shade200,
