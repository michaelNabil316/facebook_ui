import 'package:flutter/material.dart';

class NavCircleIcon extends StatelessWidget {
  final icon;
  const NavCircleIcon({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CircleAvatar(
          radius: 17,
          backgroundColor: Colors.grey[300],
          child: Icon(
            icon,
            color: Colors.black,
          )),
    );
  }
}

Widget mobilNavIcon(icon) {
  return CircleAvatar(
    backgroundColor: Colors.grey[300],
    child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.black,
          size: 25,
        )),
  );
}
