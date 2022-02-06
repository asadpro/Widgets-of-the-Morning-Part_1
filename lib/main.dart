import 'package:flutter/material.dart';
import 'package:play_with_widgets_part_1/clip_oval.dart';
import 'package:play_with_widgets_part_1/clipr_rect.dart';
import 'package:play_with_widgets_part_1/list_wheel_scroll.dart';
import 'animated_container.dart';
import 'circle_avatar.dart';
import 'types_of_buttons.dart';
import 'fitted__box.dart';
import 'flexible_vs_expanded.dart';
import 'floating_action_button.dart';
import 'wrap_chip.dart';

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
        'Buttons': (context) => ButtonWidget(),
        'FittedBoxWidget': (context) => FittedBoxWidget(),
        'FloatingActionWidget': (context) => FloatingActionWidget(),
        'FlexibleWidget': (context) => FlexibleWidget(),
        'ListWheel': (context) => ListWheel(),
        'WrapChip': (context) => WrapChip(),
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
            'Top widgets of the week',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView(
          itemExtent: 87,
          children: const [
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
              widgetName: 'Buttons',
              route: 'Buttons',
            ),
            WidgetButton(
              widgetName: 'CircleAvatar',
              route: 'CircleAvatar',
            ),
            WidgetButton(
              widgetName: 'ListWheel',
              route: 'ListWheel',
            ),
            WidgetButton(
              widgetName: 'WrapChip',
              route: 'WrapChip',
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetButton extends StatelessWidget {
  const WidgetButton({Key? key, required this.widgetName, required this.route})
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
