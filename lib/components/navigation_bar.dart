import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 25,
          ),
          Text(
            'Contacts',
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.grey,
            size: 30,
          )
        ],
      ),
    );
  }
}
