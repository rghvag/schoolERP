import 'package:flutter/material.dart';

class HomeworkBar extends StatelessWidget {
  final String day;
  final int percent;

  HomeworkBar({required this.day, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 70,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(day),
              SizedBox(height: 8),
              LinearProgressIndicator(
                value: percent / 100,
                color: Colors.green,
                backgroundColor: Colors.grey,
              ),
              Text(
                '$percent%',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class HomeworkBar extends StatelessWidget {
//   final String day;
//   final int percent;
//   HomeworkBar({required this.day, required this.percent});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 12),
//       child: Column(
//         // crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Container(
//             height: percent * 1,
//             width: 15,
//             color: Colors.deepPurple
//                 .shade200, 
//           ),
//           SizedBox(height: 4),
//           Text('$percent%'),
//           Text(day),
//         ],
//       ),
//     );
//   }
// }
