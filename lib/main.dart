import 'package:flutter/material.dart';
import 'package:payment_apps/widgets/body.dart';
// import 'package:payment_apps/widgets/payment.dart';

void main() => runApp(const Payment());

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0xff007DFF)
                  : const Color(0xff4D5B7C),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff04112F),
        body: Column(
          children: [
            const Body(),
            option(0),
            option(1),
            option(2),
          ],
        ),
      ),
    );
  }
}
