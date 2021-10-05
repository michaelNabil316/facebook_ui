import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 50,
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Search Facebook',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Icon(
                      Icons.search,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
