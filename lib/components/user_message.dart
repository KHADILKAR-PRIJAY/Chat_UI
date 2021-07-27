import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';
import 'user_widget.dart';

class UserMessage extends StatelessWidget {
  String userImage;
  String userName;
  String userLabel;
  String time;
  int count;
  UserMessage({
    required this.userImage,
    required this.userName,
    required this.userLabel,
    required this.time,
    this.count = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserWidget(
            userImage: userImage,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 12),
                Text(
                  userLabel,
                  style: TextStyle(
                      color: this.count == 0 ? Colors.grey : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                time,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 7,
              ),
              this.count == 0
                  ? Container(
                      height: 29,
                    )
                  : CircleAvatar(
                      radius: 9,
                      child: Text(
                        count.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                      backgroundColor: KThemeColor,
                    )
            ],
          )
        ],
      ),
    );
  }
}
