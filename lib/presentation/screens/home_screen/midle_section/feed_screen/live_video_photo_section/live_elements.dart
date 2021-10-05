import 'package:flutter/material.dart';

class LiveElement extends StatelessWidget {
  final icon;
  final icColor;
  final elementName;
  const LiveElement({Key key, this.icon, this.icColor, this.elementName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: AlignmentDirectional.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: icColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(elementName)
          ],
        ),
      ),
    );
  }
}
