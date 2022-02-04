import 'package:flutter/material.dart';

// ignore: camel_case_types
class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect Screen'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: ClipOval(
            child: Image.asset('recipes/1.jpg'),
          ),
        ),
      ),
    );
  }
}
