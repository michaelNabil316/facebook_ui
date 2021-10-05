import 'package:flutter/material.dart';

import 'circles_icons.dart';
import 'user_info.dart';

class NavCircleIcons extends StatelessWidget {
  const NavCircleIcons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          UserInfo(), //user img and name
          NavCircleIcon(icon: Icons.apps_rounded),
          NavCircleIcon(icon: Icons.message_rounded), //messanger
          NavCircleIcon(icon: Icons.notifications), //notification
          NavCircleIcon(icon: Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
