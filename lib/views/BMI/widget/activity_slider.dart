import 'package:flutter/material.dart';

class ActivitySlider extends StatefulWidget {
  final Function onchange;
  final double value;
  const ActivitySlider(this.onchange, this.value);

  @override
  _ActivitySliderState createState() => _ActivitySliderState();
}

class _ActivitySliderState extends State<ActivitySlider> {
  double val = 0;
  double min = 0;
  double max = 5;
  final divisions = 6;
  var labels = [
    "Sedentary: little or no exercise",
    "Light: exercise 1-3 times/week",
    "Moderate: exercise 4-5 times/week",
    "Active: daily exercise 3-4 times/week",
    "Very Active: intense exercise 6-7 times/week",
    "Extra Active: very intense exercise daily"
  ];
  Function _onchange = () => {};

  @override
  void initState() {
    super.initState();
    _onchange = widget.onchange;
    val = widget.value;
  }

  @override
  Widget build(BuildContext context) => SliderTheme(
        data: const SliderThemeData(
          activeTickMarkColor: Colors.transparent,
          inactiveTickMarkColor: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Align(
              alignment: Alignment.center,
              child:  Text(
                labels[val.toInt()],
                maxLines: 2,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                    overflow: TextOverflow.ellipsis),
                ),
             ),
            ),
            Slider(
                min: min.toDouble(),
                max: max.toDouble(),
                divisions: 7,
                value: val.toDouble(),
                onChanged: changeValue)
          ],
        ),
      );

  void changeValue(var value) {
    val = value;
    _onchange(value);
  }
}
