import 'package:flutter/material.dart';

import '../constants/contstans.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kBackGroundColor,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.notifications_none_outlined,
              color: kTextColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
              'Result',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: kItemColor,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'vazn ide al',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: kResultColor,
                        ),
                      ),
                      Text(
                        '24.1',
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold,
                          color: kItemColor,
                        ),
                      ),
                      Text(
                        'che badan sexy',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                        ),
                      ),
                    ]),
              ),
            ),
             const SizedBox(
            height: 30.0,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: kGreenColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                'ReCalculate BMI',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: kItemColor,
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
