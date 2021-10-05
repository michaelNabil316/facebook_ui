import 'package:flutter/material.dart';
import 'midle_section_icons.dart';

class NavBarMidleSection extends StatelessWidget {
  const NavBarMidleSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myMedia = MediaQuery.of(context).size;
    return Row(
      children: [
        MidleSectionIcon(icon: Icons.home),
        MidleSectionIcon(icon: Icons.video_settings_rounded),
        MidleSectionIcon(icon: Icons.supervised_user_circle),
        MidleSectionIcon(icon: Icons.dashboard),
        if (myMedia.width < 550) MidleSectionIcon(icon: Icons.menu),
      ],
    );
  }
}
