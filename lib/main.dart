import 'package:flutter/material.dart';
import 'package:play_with_widgets_part_1/clip_oval.dart';
import 'package:play_with_widgets_part_1/clipr_rect.dart';

import 'animated_container.dart';
import 'circle_avatar.dart';
import 'fade_in_image.dart';
import 'fitted__box.dart';
import 'flexible.dart';
import 'floating_action_button.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        'clipOval': (context) => clipOvalWidget(),
        'clipRRect': (context) => ClipRRectWidget(),
        'CircleAvatar': (context) => CircleAvatarWidget(),
        'AnimatedContainerWidget': (context) => AnimatedContainerWidget(),
        'FadeInImageWidget': (context) => FadeInImageWidget(),
        'FittedBoxWidget': (context) => FittedBoxWidget(),
        'FloatingActionWidget': (context) => FloatingActionWidget(),
        'FlexibleWidget': (context) => FlexibleWidget(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<Widget> emptyListForBtn = [];

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
            WidgetButton(
              widgetName: 'clipOval',
              route: 'clipOval',
            ),
            WidgetButton(
              widgetName: 'ClipRRect',
              route: 'clipRRect',
            ),
            WidgetButton(
              widgetName: 'FloatingActionButton',
              route: 'FloatingActionWidget',
            ),
            WidgetButton(
              widgetName: 'Flexible',
              route: 'FlexibleWidget',
            ),
            WidgetButton(
              widgetName: 'FittedBox',
              route: 'FittedBoxWidget',
            ),
            WidgetButton(
              widgetName: 'AnimatedContainer',
              route: 'AnimatedContainerWidget',
            ),
            WidgetButton(
              widgetName: 'FadeInImage',
              route: 'FadeInImageWidget',
            ),
            WidgetButton(
              widgetName: 'CircleAvatar',
              route: 'CircleAvatar',
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetButton extends StatelessWidget {
  WidgetButton({Key? key, required this.widgetName, required this.route})
      : super(key: key);
  final String widgetName;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          widgetName,
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
