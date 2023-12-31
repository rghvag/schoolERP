import 'package:flutter/material.dart';
import 'package:schoolerp/models/assignment.dart';

class AssignmentCard extends StatelessWidget {
  final Assignment assignment;

  AssignmentCard(this.assignment);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(
              assignment.iconsregistered,
              size: 40,
              color: Colors.blue,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  assignment.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  assignment.description,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
