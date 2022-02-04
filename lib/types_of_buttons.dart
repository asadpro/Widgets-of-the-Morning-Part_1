import 'package:flutter/material.dart';

// ignore: camel_case_types
class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool isHover = false;
  List<bool> stateOfToggle = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fade in image Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.teal,
                child: Text('Material Button'),
              ),
              RawMaterialButton(
                onPressed: () {},
                fillColor: Colors.red,
                child: Text('RawMaterialButton'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
                style: TextButton.styleFrom(
                    backgroundColor:
                        isHover ? Colors.transparent : Colors.white24),
                onHover: (value) => setState(() {
                  isHover = !value;
                }),
              ),
              SizedBox(
                height: 12.0,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                splashColor: Colors.red,
              ),
              // DropdownButton(
              //   items: const [
              //     DropdownMenuItem(child: Text('Item 1')),
              //     DropdownMenuItem(child: Text('Item 1')),
              //     DropdownMenuItem(child: Text('Item 1')),
              //     DropdownMenuItem(child: Text('Item 1')),
              //   ],
              //   onChanged: (value) {},
              //   onTap: () {},
              // )
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.indigo,
                  child: Text(
                    'Button',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(shape: CircleBorder()),
                onPressed: () {},
                child: Container(
                    padding: EdgeInsets.all(23.0), child: Text('Elevated')),
              ),
            ],
          ),
        ));
  }
}
