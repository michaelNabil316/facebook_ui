import 'package:flutter/material.dart';

Widget birthdayCart() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.card_giftcard_outlined,
              color: Colors.amber[400],
            ),
            title: Text('Birthdays'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Wrap(
              children: [
                Text('beshoy Adly',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(' and'),
                Text(' 2 others ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
            child: Text('have a birthday today, wish to them a happy birthday'),
          ),
        ],
      ),
    ),
  );
}
