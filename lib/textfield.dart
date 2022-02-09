import 'package:flutter/material.dart';

void main() => runApp(const TextFieldWidget());

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: TextForm(),
    );
  }
}

// Define a custom Form widget.
class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final myController = TextEditingController();
  String? enteredText = '';

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: myController,
              onChanged: (value) {
                setState(() {
                  enteredText = value;
                });
              },
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0), child: Text('$enteredText'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: SingleChildScrollView(child: Text(myController.text)),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
