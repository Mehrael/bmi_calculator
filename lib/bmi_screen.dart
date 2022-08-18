import 'dart:math';

import 'package:flutter/material.dart';
import 'result_screen.dart';

class bmiScreen extends StatefulWidget {
  const bmiScreen({Key? key}) : super(key: key);

  @override
  State<bmiScreen> createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
   bool isMale = true;

  double height = 120;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isMale ? Colors.grey[400] : Colors.black45,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 110,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Male',
                                  style:
                                  TextStyle(fontSize: 25, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isMale ? Colors.black45 : Colors.grey[400],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 110,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Female',
                                  style:
                                  TextStyle(fontSize: 25, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black45,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                  fontSize: 25, color: Colors.grey),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          max: 220,
                          min: 80,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                          inactiveColor: Colors.grey,
                          activeColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black45,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '$weight',
                                style: TextStyle(
                                    fontSize: 55,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'weight-',
                                    mini: true,
                                    child: Icon(Icons.remove),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight+',
                                    mini: true,
                                    child: Icon(Icons.add),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black45,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '$age',
                                style: TextStyle(
                                    fontSize: 55,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: 'age-',
                                    mini: true,
                                    child: Icon(Icons.remove),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age+',
                                    mini: true,
                                    child: Icon(Icons.add),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.redAccent,
              height: 55,
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => result_screen(
                        age: age,
                      isMale: isMale,
                      result: result,),
                    )
                );
              },
              child: Text(
                'Calculate',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
