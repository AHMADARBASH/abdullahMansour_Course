import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Color white = Colors.white;
  final Color mainColor = const Color.fromARGB(255, 4, 28, 50);
  final Color secondColor = Colors.redAccent;
  bool? isMale = true;

  int age = 20;
  int weight = 50;

  @override
  void initState() {
    isMale = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: mainColor,
        title: const Text('BMI Calculator'),
      ),
      body: Column(children: [
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: GestureDetector(
                  onTap: () => setState(() {
                    isMale = true;
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: isMale == null
                              ? Colors.transparent
                              : isMale!
                                  ? secondColor
                                  : Colors.transparent,
                        ),
                        color: mainColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: white,
                          size: 100,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(color: white, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: GestureDetector(
                  onTap: () => setState(() {
                    isMale = false;
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: isMale == null
                              ? Colors.transparent
                              : isMale!
                                  ? Colors.transparent
                                  : secondColor,
                        ),
                        color: mainColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: white,
                          size: 100,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(color: white, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CustomHeight(
            containerColor: mainColor,
            textColor: white,
            sliderMainColor: secondColor,
          ),
        )),
        Expanded(
          child: Row(children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(color: white, fontSize: 25),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  color: white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: secondColor,
                                  mini: true,
                                  onPressed: () {
                                    if (age == 1) return;
                                    age--;
                                    setState(() {});
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  backgroundColor: secondColor,
                                  mini: true,
                                  onPressed: () {
                                    age++;
                                    setState(() {});
                                  },
                                  child: const Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(color: white, fontSize: 25),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(
                            color: white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: secondColor,
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            backgroundColor: secondColor,
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.redAccent,
          height: 50,
          minWidth: double.infinity,
          child: const Text(
            'Calculate',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}

class CustomHeight extends StatefulWidget {
  const CustomHeight({
    Key? key,
    required this.containerColor,
    required this.textColor,
    required this.sliderMainColor,
  }) : super(key: key);

  final Color containerColor;
  final Color textColor;
  final Color sliderMainColor;
  @override
  State<CustomHeight> createState() => _CustomHeightState();
}

class _CustomHeightState extends State<CustomHeight> {
  double height = 120;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'HEIGHT',
            style: TextStyle(color: widget.textColor, fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toStringAsFixed(0),
                style: TextStyle(color: widget.textColor, fontSize: 40),
              ),
              Text(
                'CM',
                style: TextStyle(color: widget.textColor),
              ),
            ],
          ),
          Slider(
              activeColor: widget.sliderMainColor,
              inactiveColor: widget.sliderMainColor.withAlpha(75),
              value: height,
              min: 80,
              max: 220,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              })
        ],
      ),
    );
  }
}
