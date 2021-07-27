import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'ONLINE',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: null,
          child: Text(
            '+ ADD FRIENDS ',
            style: TextStyle(color: KThemeColor, fontWeight: FontWeight.w900),
          ),
        )
      ],
    );
  }
}
