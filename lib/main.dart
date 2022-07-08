import 'package:flutter/material.dart';
import 'package:payment_apps/widgets/option.dart';
import 'widgets/body.dart';

void main() => runApp(const Payment());

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff04112F),
        body: Column(
          children: const [
            Body(),
            Options(),
          ],
        ),
      ),
    );
  }
}
