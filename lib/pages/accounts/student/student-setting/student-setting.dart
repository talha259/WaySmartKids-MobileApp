import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:waysmartkids/pages/accounts/login.dart';
import 'package:waysmartkids/pages/accounts/shared/profile/profile.dart';

class StudentSetting extends StatelessWidget {
  const StudentSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white.withAlpha(230),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 800,
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
                                "Settings",
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
                        top: 160,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.brown.shade800,
                              child: const Text('TI'),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Talha Ikram",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: Profile(),
                                        type: PageTransitionType
                                            .rightToLeftWithFade));
                              },
                              child: Icon(
                                FluentIcons.edit_settings_24_filled,
                                size: 30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )),
                    Positioned(
                      width: MediaQuery.of(context).size.width - 0,
                      // left: 10,
                      top: 250,
                      height: 340,
                      child: Container(
                          margin: EdgeInsets.symmetric(vertical: 18.0),
                          height: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: ListView(
                            children: <Widget>[
                              Card(
                                color: Colors.grey.shade200,
                                child: ListTile(
                                  leading: Icon(
                                    FluentIcons.service_bell_24_filled,
                                    color: Colors.orange[700],
                                    size: 35,
                                  ),
                                  title: Text(
                                    'Notifications',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  trailing:
                                      Icon(FluentIcons.arrow_right_24_filled),
                                ),
                              ),
                              Card(
                                color: Colors.grey.shade200,
                                child: ListTile(
                                  leading: Icon(
                                    FluentIcons.credit_card_toolbox_20_filled,
                                    color: Colors.orange[700],
                                    size: 35,
                                  ),
                                  title: Text(
                                    'Payments',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  trailing:
                                      Icon(FluentIcons.arrow_right_24_filled),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: Login(),
                                          type: PageTransitionType.fade));
                                },
                                child: Card(
                                  color: Colors.grey.shade200,
                                  child: ListTile(
                                    leading: Icon(
                                      FluentIcons.credit_card_toolbox_20_filled,
                                      color: Colors.orange[700],
                                      size: 35,
                                    ),
                                    title: Text(
                                      'Logout',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    trailing:
                                        Icon(FluentIcons.arrow_right_24_filled),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
