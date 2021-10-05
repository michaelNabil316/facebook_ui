import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai3-1.fna.fbcdn.net/v/t1.6435-9/126812276_3664644023581339_1568427545710938044_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=AFIQjFA1BTsAX-CRiHo&_nc_ht=scontent.fcai3-1.fna&oh=382f20e53f4c14fac1783989b1b9db00&oe=61633C16'),
            ),
          ),
          Expanded(
              child: Text(
            'Michael',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )),
        ],
      ),
    );
  }
}
