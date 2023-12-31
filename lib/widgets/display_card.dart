import 'package:flutter/material.dart';

class Carddisplay extends StatelessWidget {
  Carddisplay({super.key, required this.islight, required this.strtext});
  final String strtext;
  final bool islight;
  @override
  Widget build(BuildContext context) {
    var _progressvalue = 0.6;

    return Card(
      color: islight == true ? Colors.white : Colors.black,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                strtext,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: islight == true ? Colors.black : Colors.white),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 90,
                  height: 100,
                  child: CircularProgressIndicator(
                    value: _progressvalue,
                    strokeWidth: 5.0,
                    color: Colors.green,
                    backgroundColor: Colors.white,
                  ),
                ),
                Text(
                  '${(_progressvalue * 100).toStringAsFixed(0)}%',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: islight == true ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      islight == true ? Colors.black : Colors.white,
                    ),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  child: strtext == 'Attendance'
                      ? Center(
                          child: Text(
                          'Show ',
                          style: TextStyle(
                              color: islight == true
                                  ? Colors.white
                                  : Colors.black),
                        ))
                      : Center(
                          child: Text(
                          'Pay ',
                          style: TextStyle(
                              color: islight == true
                                  ? Colors.white
                                  : Colors.black),
                        )),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
