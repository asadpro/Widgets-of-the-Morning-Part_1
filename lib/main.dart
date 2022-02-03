import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:play_with_widgets_part_1/clipOval.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: {
      'route1': (context) => clipOvalWidget(),
      'route2': (context) => clipOvalWidget(),
    },
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<Widget> emptyListForBtn = [];
  List<String> nameOfWidget = [
    'ClipRRect()',
    'ClipOval()',
    'CircleAvatar()',
    'FadeInImage().assetNetwork()',
    'AnimatedContainer()',
    'FittedBox()',
    'Flexible() ',
    'FloatingActionButton()',
    'BottomAppBar()',
    'CircleBorder()'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'List of Widgets',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView(
          // padding: EdgeInsets.all(15.0),
          itemExtent: 87,
          children: [
            WidgetButton(),
          ],
        ),
      ),
    );
  }
}

class WidgetButton extends StatelessWidget {
  // WidgetButton({required this.widgetName, required this.onPress});
  // String widgetName;
  // VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'route1');
        },
        child: Text(
          'ClipRRect',
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
