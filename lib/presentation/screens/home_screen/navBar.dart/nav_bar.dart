import 'package:flutter/material.dart';
import 'widgets/circles_icons.dart';
import 'widgets/midle_section.dart';
import 'widgets/search_section.dart';
import 'widgets/facebook_name.dart';
import 'widgets/nav_circle_icons.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myMedia = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        var scrMaxWidth = constraints.maxWidth.toInt();
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (scrMaxWidth >= 500)
                  SearchSection(), //include facebook img and search field #website
                if (scrMaxWidth < 500) FacebookName(), //in #mobile
                if (scrMaxWidth >= 500)
                  //include dashbord, video, user and home #website
                  Expanded(flex: 2, child: NavBarMidleSection()),
                if (scrMaxWidth >= 500)
                  //user img, name, notifiction, messanger and arrow down
                  NavCircleIcons(),
                if (scrMaxWidth < 500)
                  //search and messanger for mobile
                  Expanded(flex: 3, child: SizedBox()),
                if (scrMaxWidth < 500)
                  //search and messanger for mobile
                  NavCircleIcon(icon: Icons.search),
                if (scrMaxWidth < 500)
                  //messanger for mobile
                  NavCircleIcon(icon: Icons.message_rounded),
              ],
            ),
            // #Mobile
            if (myMedia.width < 550)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NavBarMidleSection(),
              ),
          ],
        );
      }),
    );
  }
}
