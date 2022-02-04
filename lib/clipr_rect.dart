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
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(52.0), right: Radius.circular(52.0)),
          child: Image.asset('recipes/1.jpg'),
        ),
      ),
    );
  }
}
