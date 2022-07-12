import 'package:flutter/material.dart';
import 'package:payment_apps/theme.dart';
import 'package:payment_apps/widgets/body.dart';
import 'package:payment_apps/widgets/button.dart';
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
    Widget option(int index, String title, String subTitle, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin:
              const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0xff007DFF)
                  : const Color(0xff4D5B7C),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  selectedIndex == index
                      ? Image.asset(
                          "assets/images/check2.png",
                          width: 18,
                          height: 18,
                        )
                      : Image.asset(
                          "assets/images/check.png",
                          width: 18,
                          height: 18,
                        ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: planStyle,
                      ),
                      Text(
                        subTitle,
                        style: descStyle,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    price,
                    style: priceStyle,
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff04112F),
        body: ListView(
          children: [
            const Body(),
            option(0, "Monthly", "Good for starting up", "\$20"),
            option(1, "Quarterly", "Focusing on building", "\$55"),
            option(2, "Yearly", "Steady company", "\$220"),
            selectedIndex == -1 ? const SizedBox() : const Button(),
          ],
        ),
      ),
    );
  }
}
