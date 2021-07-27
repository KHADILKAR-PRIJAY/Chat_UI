import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/components/navigation_bar.dart';
import 'package:chat_app/components/user_widget.dart';
import 'package:chat_app/components/user_message.dart';
import 'package:chat_app/components/status_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              NavigationBar(),
              StatusBar(),
              Container(
                height: 75,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    UserWidget(
                      userImage: 'user1.jpg',
                    ),
                    UserWidget(userImage: 'user2.jpeg'),
                    UserWidget(userImage: 'user3.webp'),
                    UserWidget(userImage: 'user4.jpg'),
                    UserWidget(userImage: 'user5.jpg'),
                    UserWidget(userImage: 'user7.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Expanded(
                child: ListView(
                  children: [
                    UserMessage(
                        userImage: 'user6.jpg',
                        userLabel: 'hw r u?',
                        userName: 'Hemsworth K.',
                        time: '15:42',
                        count: 3),
                    UserMessage(
                        userImage: 'user8.png',
                        userLabel: 'what to do.......',
                        userName: 'Robert Jr.',
                        time: '12:07',
                        count: 1),
                    UserMessage(
                        userImage: 'user9.jpg',
                        userLabel: 'see you tomorrow!',
                        userName: 'David smith',
                        time: '00:16',
                        count: 0),
                    UserMessage(
                        userImage: 'user10.jpg',
                        userLabel: 'Hey! when we got to....',
                        userName: 'Stella ',
                        time: '1d ago',
                        count: 0),
                    UserMessage(
                        userImage: 'user11.jpg',
                        userLabel: 'lets catch up at 9pm',
                        userName: 'Vivian',
                        time: '1d ago',
                        count: 2),
                    UserMessage(
                        userImage: 'user12.webp',
                        userLabel: 'Bye.',
                        userName: 'Terry keth',
                        time: '2d ago',
                        count: 4),
                    UserMessage(
                        userImage: 'user14.jpg',
                        userLabel: 'hw r u?',
                        userName: 'Niall horan',
                        time: '2d ago',
                        count: 1),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
