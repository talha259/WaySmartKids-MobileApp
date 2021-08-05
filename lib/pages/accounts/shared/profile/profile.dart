import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:waysmartkids/pages/accounts/shared/bottom-navigation-bar/bottom-navbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white.withAlpha(230),
        body: Container(
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: BottomNavigation(0),
                                type: PageTransitionType.leftToRightWithFade));
                      },
                      child: Icon(
                        FluentIcons.arrow_left_20_filled,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  width: MediaQuery.of(context).size.width - 20,
                  left: 10,
                  top: 110,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
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
                        child: CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          child: const Text('TI'),
                          radius: 50,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  width: MediaQuery.of(context).size.width - 20,
                  left: 150,
                  top: 300,
                  child: Row(
                    children: [
                      Text(
                        "Talha Ikram",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
