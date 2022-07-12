import 'package:flutter/material.dart';
import 'package:payment_apps/theme.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 34,
        ),
        // Container(
        //   width: MediaQuery.of(context).size.width - (2 * 20),
        //   padding: const EdgeInsets.all(12),
        //   decoration: BoxDecoration(
        //     color: blue,
        //     borderRadius: BorderRadius.circular(71),
        //   ),
        //   child: Column(
        //     children: [
        //       Text(
        //         "Checkout Now",
        //         style: buttonStyle,
        //       ),
        //     ],
        //   ),
        // ),
        Container(
          width: MediaQuery.of(context).size.width - (2 * 20),
          padding: const EdgeInsets.all(12),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff007DFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(71),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Checkout Now",
              style: buttonStyle,
            ),
          ),
        ),
        const SizedBox(
          height: 34,
        ),
      ],
    );
  }
}
