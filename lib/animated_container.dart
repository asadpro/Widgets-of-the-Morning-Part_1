import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              child: isExpanded
                  ? AnimatedContainer(
                      duration: Duration(seconds: 3),
                      child: ElevatedButton(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                      ),
                    )
                  : AnimatedContainer(
                      duration: Duration(seconds: 3),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Icon(Icons.done, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.blue, // <-- Button color
                          onPrimary: Colors.red, // <-- Splash color
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
