import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Widget> emptyListForBtn = [];

  List<Widget> creatingButtons() {
    for (int i = 0; i <= 10; i++) {
      Widget addingToList = SizedBox.expand(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Widget ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34.0,
            ),
          ),
        ),
      );
      emptyListForBtn.add(addingToList);
    }
    return emptyListForBtn;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: ListWheelScrollView(
            itemExtent: 130,
            children: creatingButtons(),
          ),
        ),
      ),
    );
  }
}
