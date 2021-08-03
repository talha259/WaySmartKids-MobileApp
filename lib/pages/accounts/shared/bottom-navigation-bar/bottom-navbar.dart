import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:waysmartkids/pages/accounts/shared/bottom-navigation-bar/placeholder-widget.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.board_16_filled),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.calendar_ltr_20_filled),
            title: Text('Sessions'),
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.settings_20_filled),
              title: Text('Settings'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
