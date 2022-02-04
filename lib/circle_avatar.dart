import 'package:flutter/material.dart';

// ignore: camel_case_types
class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CircleAvatar Screen'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 180.0,
            backgroundImage: AssetImage('recipes/7.jpg'),
          ),
        ));
  }
}
