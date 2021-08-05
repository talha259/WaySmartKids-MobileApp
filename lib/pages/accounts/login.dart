import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:waysmartkids/pages/accounts/register-student/register-student.dart';

import 'shared/bottom-navigation-bar/bottom-navbar.dart';

class Login extends StatelessWidget {
  get onButtonPressed => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   actions: [],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
              child: Image.asset('assets/img/wsk-logo.png')),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(5, 15, 260, 15),
          //   child: Text("Processd with your"),
          // ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(5, 5, 350, 5),
          //   child: Text("Login"),
          // ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 15),
            child: TextField(
              decoration: InputDecoration(
                  // hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 7, 20, 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 7, 20, 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: BottomNavigation(0),
                        type: PageTransitionType.fade));
              },
              child: const Text('Login'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.black87)),
                ]),
              ),
              InkWell(
                  child: Text("SignUp Now",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    _alert(context);
                  }
                  // onTap: () => Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         child: Register(), type: PageTransitionType.fade)),
                  )
            ],
          )
        ],
      ),
    ));
  }

  _alert(context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Register your free account'),
          ],
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'Register as a tutor'),
                child: const Text('Create a Tutor Account'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                        child: RegisterStudent(),
                        type: PageTransitionType.fade)),
                child: const Text('Create a Student Account'),
              ),
              // onButtonPressed(
              //     context,
              //     Navigator.push(
              //         context,
              //         PageTransition(
              //             child: RegisterStudent(),
              //             type: PageTransitionType.fade)))
            ],
          ),
        ],
      ),
    );
  }
}
