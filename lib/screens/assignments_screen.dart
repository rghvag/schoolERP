import 'package:flutter/material.dart';
import 'package:schoolerp/models/assignment.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:schoolerp/widgets/assignmentCard.dart';

class AssignmentScreen extends StatefulWidget {
  @override
  _AssignmentScreenState createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  List<DateTime?> _values = [
    DateTime.now(),
  ];

  List<Assignment> assignments = [
    Assignment(
        Icons.calculate, 'Mathematics Hometask', 'Complete exercises 1-5'),
    Assignment(
        Icons.science, 'Theoretical Physics', 'Research and submit findings'),
    Assignment(
      Icons.fitness_center,
      'Physical Exercise',
      'Write a summary of the book',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          'Assignments',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Card(
                elevation: 3.0,
                color: Colors.white,
                child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                  ),
                  value: _values,
                  onValueChanged: (dates) => _values = dates,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Assignments (10)',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.grey.shade300,
                    ),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: assignments.length,
              itemBuilder: (context, index) {
                return AssignmentCard(assignments[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
