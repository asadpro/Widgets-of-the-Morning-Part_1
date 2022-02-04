import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatelessWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clipOval Screen'),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
