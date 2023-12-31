// // import 'package:flutter/material.dart';
// // import 'package:schoolerp/widgets/chart_bar.dart';

// // class home extends StatelessWidget {
// //   const home({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Row(
// //         crossAxisAlignment: CrossAxisAlignment.end,
// //         children: [
// //           ChartBar(fill: 0.8),
// //           ChartBar(fill: 0.6),
// //           ChartBar(fill: 0.9),
// //           ChartBar(fill: 0.75),
// //           ChartBar(fill: 0.5),
// //           ChartBar(fill: 0.85),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class ChartBar extends StatelessWidget {
// //   const ChartBar({
// //     super.key,
// //     required this.fill,
// //   });

// //   final double fill;

// //   @override
// //   Widget build(BuildContext context) {
// //     // final isDarkMode =
// //     // MediaQuery.of(context).platformBrightness == Brightness.dark;
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 4),
// //       child: FractionallySizedBox(
// //         heightFactor: fill,
// //         child: DecoratedBox(
// //           decoration: BoxDecoration(
// //             shape: BoxShape.rectangle,
// //             borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
// //             // color: isDarkMode
// //             //     ? Theme.of(context).colorScheme.secondary
// //             //     : Theme.of(context).colorScheme.primary.withOpacity(0.65),
// //             color: Colors.deepPurple.shade200,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       padding: const EdgeInsets.symmetric(
//         vertical: 16,
//         horizontal: 8,
//       ),
//       // width: double.infinity,
//       height: 120,
//       // decoration: BoxDecoration(
//       //   borderRadius: BorderRadius.circular(8),
//       //   gradient: LinearGradient(
//       //     colors: [
//       //       Theme.of(context).colorScheme.primary.withOpacity(0.3),
//       //       Theme.of(context).colorScheme.primary.withOpacity(0.0)
//       //     ],
//       //     begin: Alignment.bottomCenter,
//       //     end: Alignment.topCenter,
//       //   ),
//       // ),
//       // child:
//       child: Column(
//         children: [
//           Expanded(
//             child: Row(
//               // crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Text('hi'),
//                 Text('hi'),
//                 Text('hi'),
//                 Text('hi'),
//                 ChartBar(fill: 0.8),
//                 //           ChartBar(fill: 0.8),
//                 Text('hiw'),
//                 ChartBar(fill: 0.6),
//                 // //           ChartBar(fill: 0.9),
//                 // //           ChartBar(fill: 0.75),
//                 // //           ChartBar(fill: 0.5),
//                 // //           ChartBar(fill: 0.85),
//                 Text('hi'),
//               ],
//             ),
//           ),
//           // const SizedBox(height: 12),
//         ],
//       ),
//     );
//   }
// }

// class ChartBar extends StatelessWidget {
//   const ChartBar({Key? key, required this.fill}) : super(key: key);

//   final double fill;

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode =
//         MediaQuery.of(context).platformBrightness == Brightness.dark;

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4),
//       child: FractionallySizedBox(
//         heightFactor: fill,
//         child: DecoratedBox(
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }
