import 'package:flutter/material.dart';
import 'package:waysmartkids/pages/accounts/shared/dashboard/dashboard.dart';
import 'package:waysmartkids/pages/accounts/student/student-sessions/student-sessions.dart';
import 'package:waysmartkids/pages/accounts/student/student-setting/student-setting.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    if (color == Colors.white) {
      return Dashboard();
    } else if (color == Colors.deepOrange) {
      return StudentSessions();
    } else {
      return StudentSetting();
    }
  }
}
