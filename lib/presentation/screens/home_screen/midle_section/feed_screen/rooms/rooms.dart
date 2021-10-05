import 'package:flutter/material.dart';
import 'widgets/create_room.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          height: 60,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                      height: 35,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Create Room',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))),
                  CreatRoom(), //widget of reate new room
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
