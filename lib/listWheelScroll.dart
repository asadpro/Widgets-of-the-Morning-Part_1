import 'package:flutter/material.dart';

class ListWheel extends StatelessWidget {
  final List<Widget> images = [];
  ListWheel({Key? key}) : super(key: key);

  List<Widget> returnImages() {
    for (int i = 1; i <= 10; i++) {
      images.add(Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('recipes/$i.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ));
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheelScroll'),
      ),
      body: ListWheelScrollView(
        useMagnifier: true,
        magnification: 2.0,
        itemExtent: 120,
        children: returnImages(),
      ),
    );
  }
}
