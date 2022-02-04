import 'package:flutter/material.dart';

class WrapChip extends StatelessWidget {
  final List<Widget> images = [];
  WrapChip({Key? key}) : super(key: key);

  List<Widget> returnImages() {
    for (int i = 1; i <= 10; i++) {
      images.add(
        Wrap(
          children: const [
            Chip(label: Text('samsung')),
            Chip(label: Text('Q-mobile')),
            Chip(label: Text('Vivo')),
            Chip(label: Text('Huwaei')),
            Chip(label: Text('Mototrola')),
            Chip(label: Text('Iphone')),
            Chip(label: Text('Xiomi')),
            Chip(label: Text('Redmi')),
            Chip(label: Text('Oppo')),
          ],
        ),
      );
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap and chip'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: returnImages(),
        ),
      ),
    );
  }
}
