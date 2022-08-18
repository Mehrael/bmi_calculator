import 'package:flutter/material.dart';

class result_screen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  result_screen(
      {required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            'BMI Result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black87,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Age: $age',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'result: ${result.round()}',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Is Considered: ',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${
                  result<18.5 ? 'UNDERWEIGHT' :
                  result >=18.5 && result <= 24.9 ? 'NORMAL' :
                  result >= 25 && result <= 29.9 ? 'OVERWEIGHT' :
                  result >= 30 && result <= 34.9 ? 'OBESE' : 'EXTREMELY OBESE'
              }',
              style: TextStyle(fontSize: 30, color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
