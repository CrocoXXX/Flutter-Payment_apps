import 'package:flutter/material.dart';
import 'package:payment_apps/theme.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 32,
        right: 32,
        top: 50,
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/achive.png",
                width: 267,
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Upgrade to ",
                    style: titleStyle,
                  ),
                  Text(
                    "Pro",
                    style: titleStyle1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Go unlock all features and \nbuild your own business bigger",
                style: subStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
