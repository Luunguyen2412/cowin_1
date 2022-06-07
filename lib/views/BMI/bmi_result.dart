import 'package:cowin_1/views/BMI/widget/gardientCircular.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final double _bmi;
  final double _calories;
  const BmiResult(Key? key, this._bmi, this._calories) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 2, 2, 65),
            Color.fromARGB(255, 0, 0, 0),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text(
                  "BMI",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70),
                )),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: const Color.fromARGB(48, 16, 15, 82),
                  border: Border.all(
                    color: const Color.fromARGB(255, 2, 31, 82),
                    width: 2,
                  )),
              child: Stack(
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: GradientCircularProgressIndicator(
                      radius: 100,
                      value: _bmi / 25,
                      gradientColors: const [
                        Color.fromARGB(255, 13, 8, 85),
                        Color.fromARGB(255, 60, 186, 236)
                      ],
                      strokeWidth: 8,
                    ),
                  ),
                  Positioned(
                    left: 35.0,
                    top: 35.0,
                    child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: const Color.fromARGB(255, 1, 1, 43),
                        ),
                        child: Center(
                          child: Text(
                            _bmi.toStringAsFixed(1),
                            style: const TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  margin: const EdgeInsets.only(
                      top: 30, bottom: 10, right: 30, left: 30),
                  child: Column(
                    children: [
                      const Text(
                        "CALORIES",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 65,
                                height: 75,
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromARGB(255, 30, 102, 228),
                                        Color.fromARGB(255, 15, 58, 133),
                                      ],
                                    )),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/gain_weight.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          (_calories * 1.13).toStringAsFixed(1),
                                          style: const TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        const Text(
                                          ' Cal/day',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 65,
                            height: 75,
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 30, 102, 228),
                                    Color.fromARGB(255, 15, 58, 133),
                                  ],
                                )),
                            child: const Image(
                              image: AssetImage(
                                'assets/icons/maintain_weight.png',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.only(left: 25, right: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      _calories.toStringAsFixed(1),
                                      style: const TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const Text(
                                      ' Cal/day',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 65,
                                height: 75,
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromARGB(255, 30, 102, 228),
                                        Color.fromARGB(255, 15, 58, 133),
                                      ],
                                    )),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/lose_weight.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          (_calories * 0.73).toStringAsFixed(1),
                                          style: const TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        const Text(
                                          ' Cal/day',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ))
                    ],
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
