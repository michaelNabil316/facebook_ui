import 'package:flutter/material.dart';

class GroupListTile extends StatelessWidget {
  final icon;
  final iconColor;
  final text;
  final backGroundcolor;
  const GroupListTile(
      {Key key, this.icon, this.iconColor, this.text, this.backGroundcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 11,
        child: Icon(
          icon,
          size: 20,
          color: iconColor,
        ),
        backgroundColor: backGroundcolor,
      ),
      title: Text(
        '$text',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
