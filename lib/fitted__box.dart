import 'package:flutter/material.dart';

void main() => runApp(FittedBoxWidget());

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),

            // Without FittedBox

            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blue)),
              child: Text(
                'This box does not contain Fitted box widget ',
                style: Theme.of(context).textTheme.headline4,
                overflow: TextOverflow.fade,
              ),
              width: 280,
              height: 60,
            ),

            SizedBox(
              height: 12,
            ),

            // With FittedBox

            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.blue),
              ),
              child:
                  FittedBox(child: Text('This box contain Fitted box widget ')),
              width: 280,
              height: 80,
            ),

            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
