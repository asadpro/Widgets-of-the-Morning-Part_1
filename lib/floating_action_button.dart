import 'package:flutter/material.dart';

// ignore: camel_case_types
class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({Key? key}) : super(key: key);

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
