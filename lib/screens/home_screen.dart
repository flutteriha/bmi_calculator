import 'package:flutter/material.dart';
import 'package:flutteriha_bmi/screens/result_screen.dart';
import '../calculator_bmi.dart';
import '../constants/constants.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? gender;
  int weight = 72;
  int height = 173;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: kItemColor,
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
                                : null),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
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
                              children: const [
                                Icon(
                                  Icons.male,
                                  color: kItemColor,
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
                          ],
                        ),
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
                                : null),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
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
                              children: const [
                                Icon(
                                  Icons.female,
                                  color: kItemColor,
                                  size: 100.0,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: kItemColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                        const Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                        ),
                        const SizedBox(height: 15.0),
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
                                icon: const Icon(Icons.remove_circle),
                              ),
                              Text(
                                weight.toString(),
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: const Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                        ),
                        const SizedBox(height: 15.0),
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
                                icon: const Icon(Icons.remove_circle),
                              ),
                              Text(
                                height.toString(),
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    height++;
                                  });
                                },
                                icon: const Icon(Icons.add_circle),
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
            const Text(
              'Age',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: kTextColor,
              ),
            ),
            const SizedBox(height: 15.0),
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
                        age--;
                      });
                    },
                    icon: const Icon(Icons.remove_circle),
                  ),
                  Text(
                    age.toString(),
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        age++;
                      });
                    },
                    icon: const Icon(Icons.add_circle),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                CalculatorBMI calculatorBMI =
                    CalculatorBMI(height: height, weight: weight);

                if (gender != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        bmiResult: calculatorBMI.calculateBMI(),
                        resultText: calculatorBMI.getResult(),
                        interPretation: calculatorBMI.getInterPretation(),
                      ),
                    ),
                  );
                } else {
                  print('nmitavanim');
                }
              },
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Center(
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
            ),
          ],
        ),
      ),
    );
  }
}
