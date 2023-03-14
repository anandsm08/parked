import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parked/utils/topscreenbar.dart';

class userProfile extends StatelessWidget {
  const userProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Icon(Icons.logout),
                  onTap: () => print('Logged out'),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.black45,
                      size: 100,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text('User Name'), Text('Free Plan')],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
