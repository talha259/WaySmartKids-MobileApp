import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white.withAlpha(230),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 460,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/img/shape.png'),
                  fit: BoxFit.fitWidth,
                )),
                child: Stack(
                  fit: StackFit.expand,
                  alignment: AlignmentDirectional.topCenter,
                  children: <Widget>[
                    Positioned(
                        width: MediaQuery.of(context).size.width - 20,
                        left: 10,
                        top: 80,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Dashboard",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.brown.shade800,
                              child: const Text('TI'),
                            ),
                          ],
                        )),
                    Positioned(
                        width: MediaQuery.of(context).size.width - 20,
                        left: 10,
                        top: 160,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "7th January, 2020",
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        width: MediaQuery.of(context).size.width - 20,
                        left: 10,
                        top: 173,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Hello, Talha",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                      width: MediaQuery.of(context).size.width - 20,
                      left: 10,
                      top: 250,
                      height: 230,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 18.0),
                        height: 200.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              width: 120.0,
                              margin: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Wallet",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    FluentIcons.credit_card_toolbox_20_regular,
                                    size: 60,
                                    color: Colors.orange.shade800,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "PKR50",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              width: 120.0,
                              margin: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Messages",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    FluentIcons.chat_24_regular,
                                    size: 60,
                                    color: Colors.orange.shade800,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "02",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              width: 120.0,
                              margin: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sessions",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    FluentIcons.phone_screen_time_24_regular,
                                    size: 60,
                                    color: Colors.orange.shade800,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "03",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              width: 120.0,
                              margin: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "My Tutors",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    FluentIcons.chart_person_24_regular,
                                    size: 60,
                                    color: Colors.orange.shade800,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "04",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 360,
                child: Stack(
                  fit: StackFit.expand,
                  alignment: AlignmentDirectional.topCenter,
                  children: <Widget>[
                    Positioned(
                      width: MediaQuery.of(context).size.width - 20,
                      left: 10,
                      top: 02,
                      height: 400,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 18.0),
                        height: 200.0,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              width: 120.0,
                              height: 170.0,
                              margin: EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.brown.shade800,
                                    child: const Text('NA'),
                                    radius: 35,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.brown.shade800,
                                    child: const Text('MH'),
                                    radius: 35,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.brown.shade800,
                                    child: const Text('IK'),
                                    radius: 35,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              width: 120.0,
                              height: 170.0,
                              margin: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Messages",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    FluentIcons.chat_24_regular,
                                    size: 60,
                                    color: Colors.orange.shade800,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "02",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
              // Padding(
              //   padding: EdgeInsets.all(20.0),
              //   child: Column(
              //     children: [
              //       Container(
              //         margin: EdgeInsets.only(top: 5),
              //         padding: EdgeInsets.all(5),
              //         decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(20)),
              //         child: Column(
              //           children: [
              //             Container(
              //               height: 180,
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
