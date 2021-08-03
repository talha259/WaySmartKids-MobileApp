import 'package:flutter/material.dart';

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
              // Center(
              //   child: Positioned(
              //     width: MediaQuery.of(context).size.width - 20,
              //     left: 10,
              //     top: 300,
              //     height: 230,
              //     child: Container(
              //       margin: EdgeInsets.symmetric(vertical: 18.0),
              //       height: 200.0,
              //       child: Text(
              //         "Talha Ikram",
              //         style: TextStyle(
              //             color: Colors.black,
              //             fontSize: 28,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
