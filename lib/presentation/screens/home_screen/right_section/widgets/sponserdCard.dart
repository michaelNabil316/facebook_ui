import 'package:flutter/material.dart';

Widget sponserdedWidget() {
  return Container(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sponsered',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://pbs.twimg.com/media/E86mYUWXsAIR14M.jpg',
                    height: 100.0,
                    width: 150.0,
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 120.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' job in Egypt'),
                      Text('WUZZUF'),
                      Text('wuzzuf.com'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
