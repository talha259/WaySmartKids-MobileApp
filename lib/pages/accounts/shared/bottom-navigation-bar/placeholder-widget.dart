import 'package:flutter/material.dart';
import 'package:waysmartkids/modals/navigation.dart';
import 'package:waysmartkids/pages/accounts/shared/dashboard/dashboard.dart';
import 'package:waysmartkids/pages/accounts/student/student-sessions/student-sessions.dart';
import 'package:waysmartkids/pages/accounts/student/student-setting/student-setting.dart';

class PlaceholderWidget extends StatelessWidget {
  final Tabs color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    if (color == Tabs.dashboard) {
      return Dashboard();
    } else if (color == Tabs.sessions) {
      return StudentSessions();
    } else {
      return StudentSetting();
    }
  }
}
