import 'package:bmi/constants/contstans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? gender;
  int weight = 60;
  int height = 160;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kBackGroundColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: kTextColor,
          ),
        ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          const SizedBox(height: 30.0),
          const Text(
            'Gender',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: kCardColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: gender == Gender.male
                            ? Border.all(
                                width: 2.0,
                                color: kGreenColor,
                              )
                            : null,
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        Positioned(
                          top: 10.0,
                          right: 10.0,
                          child: Icon(
                            Icons.check_circle,
                            color: gender == Gender.male
                                ? kGreenColor
                                : kTextColor,
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.male,
                              color: gender == Gender.male
                                  ? Colors.blue
                                  : kTextColor,
                              size: 100.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: kItemColor,
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: kCardColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: gender == Gender.female
                            ? Border.all(
                                width: 2.0,
                                color: kGreenColor,
                              )
                            : null,
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        Positioned(
                          top: 10.0,
                          right: 10.0,
                          child: Icon(
                            Icons.check_circle,
                            color: gender == Gender.female
                                ? kGreenColor
                                : kTextColor,
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.female,
                              color: gender == Gender.female
                                  ? Colors.pink
                                  : kTextColor,
                              size: 100.0,
                            ),
                            Text(
                              'FeMale',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: kItemColor,
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: kItemColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icon(Icons.remove_circle),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                // color: kTextColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(Icons.add_circle),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: kItemColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  height--;
                                });
                              },
                              icon: Icon(Icons.remove_circle),
                            ),
                            Text(
                              height.toString(),
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                // color: kTextColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  height++;
                                });
                              },
                              icon: Icon(Icons.add_circle),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Age',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: kItemColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      age -= 1;
                    });
                  },
                  icon: Icon(Icons.remove_circle),
                ),
                Text(
                  age.toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    // color: kTextColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      age += 1;
                    });
                  },
                  icon: Icon(Icons.add_circle),
                ),
              ],
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
                'Calculate',
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
    );
  }
}
