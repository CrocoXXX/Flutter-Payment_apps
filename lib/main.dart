import 'package:flutter/material.dart';
import 'body.dart';

void main() => runApp(const Payment());

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Body(),
    );
  }
}
