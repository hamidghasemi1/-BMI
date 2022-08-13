import 'package:bmi/constants/contstans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: kCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 2.0,
                        color: kGreenColor,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                      Positioned(
                        top: 10.0,
                        right: 10.0,
                        child: Icon(
                          Icons.check_circle,
                          color: kGreenColor,
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                          Icons.mail,
                          color: kItemColor,
                          size: 100.0,
                        ),
                        Text('Male',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                          
                        ),
                        ),
                        ],
                      ),
                    ]),
                  ),
                ),
                const SizedBox(width: 15.0),
                Expanded(
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: kCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
