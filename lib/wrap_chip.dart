import 'package:flutter/material.dart';

class WrapChip extends StatelessWidget {
  final List<Widget> images = [];
  WrapChip({Key? key}) : super(key: key);
  List<String> phones = [
    'samsung',
    'Q-mobile',
    'Vivo',
    'Huwaei',
    'Mototrola',
    'Iphone',
    'Xiomi',
    'Redmi',
    'Oppo'
  ];

  List<Widget> returnImages() {
    for (int i = 0; i <= 8; i++) {
      images.add(
        Chip(
          label: Text(phones[i]),
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
        child: Wrap(
          children: returnImages(),
        ),
      ),
    );
  }
}
