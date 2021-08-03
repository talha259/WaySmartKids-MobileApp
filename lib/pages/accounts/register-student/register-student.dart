import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:waysmartkids/pages/accounts/login.dart';

class RegisterStudent extends StatelessWidget {
  bool checkBox = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                child: Image.asset('assets/img/wsk-logo.png')),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 15, 4, 5),
                    child: TextField(
                        decoration: InputDecoration(
                            // hintText: "First Name",
                            labelText: "First Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(4, 15, 20, 5),
                    child: TextField(
                        decoration: InputDecoration(
                            // hintText: "Last Name",
                            labelText: "Last Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                    // hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    // hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    // hintText: "Confirm Password",
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                showSelectedItem: true,
                items: ["Pakistan", "Italia", "Tunisia", 'Canada'],
                label: "Select Country",
                hint: "Select Country",
                // popupItemDisabled: (String s) => s.startsWith('I'),
                onChanged: print,
                // selectedItem: "Brazil",
                // searchBoxDecoration: InputDecoration(
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                showSelectedItem: true,
                items: [
                  "Time Zone A",
                  "Time Zone B",
                  "Time Zone C",
                  'Time Zone D'
                ],
                label: "Select Timezone",
                hint: "Select Timezone",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                showSelectedItem: true,
                items: [
                  "Female",
                  "Male",
                ],
                label: "Select Gender",
                hint: "Select Gender",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                showSelectedItem: true,
                items: [
                  "Social Media",
                  "Through a friend",
                ],
                label: "How did you hear about us?",
                hint: "How did you hear about us?",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 7, 20, 15),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Create Account'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(color: Colors.black87)),
                  ]),
                ),
                InkWell(
                  child: Text("SignIn",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Login(), type: PageTransitionType.fade));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
