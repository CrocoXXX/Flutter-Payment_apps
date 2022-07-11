// import 'package:flutter/material.dart';
// // import 'package:payment_apps/theme.dart';

// class Options extends StatefulWidget {
//   const Options(int i, {Key? key}) : super(key: key);

//   @override
//   State<Options> createState() => _OptionsState();
// }

// class _OptionsState extends State<Options> {
//   int selectedIndex = -1;
//   int? index;

//   @override
//   Widget build(BuildContext context) {
//     // int index;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index!;
//         });
//       },
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         margin: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: selectedIndex == index
//                 ? const Color(0xff007DFF)
//                 : const Color(0xff4D5B7C),
//           ),
//         ),
//       ),
//     );
//   }
// }
