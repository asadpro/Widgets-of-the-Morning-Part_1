import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible vs Expanded'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: ElevatedButton(onPressed: () {}, child: Text('Button'))),
            Flexible(
                child: ElevatedButton(onPressed: () {}, child: Text('Button'))),
          ],
        ),
      ),
    );
  }
}
