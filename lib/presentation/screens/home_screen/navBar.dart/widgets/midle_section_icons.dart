import 'package:flutter/material.dart';

class MidleSectionIcon extends StatelessWidget {
  final icon;
  const MidleSectionIcon({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }
}
