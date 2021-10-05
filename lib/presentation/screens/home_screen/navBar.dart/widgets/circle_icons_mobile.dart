import 'package:flutter/material.dart';
import 'circles_icons.dart';

class NavCircleIconsMob extends StatelessWidget {
  const NavCircleIconsMob({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: SizedBox()),
        NavCircleIcon(icon: Icons.search),
        NavCircleIcon(icon: Icons.message_rounded),
      ],
    );
  }
}
