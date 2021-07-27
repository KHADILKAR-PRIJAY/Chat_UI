import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

class UserWidget extends StatelessWidget {
  final String userImage;
  bool toggle;
  UserWidget({required this.userImage, this.toggle = true});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 31,
          backgroundImage: AssetImage('images/$userImage'),
        ),
        Positioned(
          bottom: 4,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
                color: this.toggle ? KThemeColor : Colors.grey,
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.white)),
          ),
        )
      ]),
    );
  }
}
