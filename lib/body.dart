import 'package:flutter/material.dart';
import 'theme.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Halo gais"),
            Image.asset("assets/images/achive.png")
          ],
        ),
      ),
    );
  }
}
