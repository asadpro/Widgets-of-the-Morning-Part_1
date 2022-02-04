import 'package:flutter/material.dart';

// ignore: camel_case_types
class clipOvalWidget extends StatelessWidget {
  const clipOvalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clipOval Screen'),
      ),
      body: Center(
        child: ClipOval(
          child: Image.asset('recipes/1.jpg'),
        ),
      ),
    );
  }
}
