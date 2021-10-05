import 'package:flutter/material.dart';

class WhatsOnYourMind extends StatelessWidget {
  const WhatsOnYourMind({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fcai3-1.fna.fbcdn.net/v/t1.6435-9/126812276_3664644023581339_1568427545710938044_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=AFIQjFA1BTsAX-CRiHo&_nc_ht=scontent.fcai3-1.fna&oh=382f20e53f4c14fac1783989b1b9db00&oe=61633C16'),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey[200])),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Text(
                  'What\'s on your mind?',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
