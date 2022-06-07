import 'package:flutter/material.dart';

class SliderLabelWidget extends StatefulWidget {
  final Function onChange;
  const SliderLabelWidget({required this.onChange});

  @override
  _SliderLabelWidgetState createState() => _SliderLabelWidgetState();
}

class _SliderLabelWidgetState extends State<SliderLabelWidget> {
  double val = 170;
  double min = 100;
  double max = 200;
  final divisions = 100;
  Function _onchange = () => {};

  @override
  void initState() {
    super.initState();
    _onchange = widget.onChange;
  }

  @override
  Widget build(BuildContext context) => SliderTheme(
        data: const SliderThemeData(
          /// ticks in between
          activeTickMarkColor: Colors.transparent,
          inactiveTickMarkColor: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSliderTopLabel(),
          ],
        ),
      );

  Widget buildSliderTopLabel() {
    var labels = [];
    for (var i = max / 10 - 1; i >= min / 10; i--) {
      labels.add((i * 10).toInt().toString());
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Utils.modelBuilder(
              labels,
              (index, label) {
                const selectedColor = Colors.white;
                final unselectedColor = Colors.white.withOpacity(0.3);
                final isSelected =
                    (10 - index) * 10 + min <= val || index == 10;
                final color = isSelected ? selectedColor : unselectedColor;
                final fontWeight =
                    isSelected ? FontWeight.bold : FontWeight.normal;
                return buildLabel(
                    label: label.toString(),
                    color: color,
                    width: 30,
                    fontWeight: fontWeight);
              },
            ),
          ),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: Slider(
            value: val,
            min: min,
            max: max,
            divisions: divisions,
            label: val.toStringAsFixed(0),
            onChanged: changeValue,
          ),
        ),
      ],
    );
  }

  Widget buildLabel(
          {String label = '',
          double width = 150,
          Color color = Colors.lightBlueAccent,
          FontWeight fontWeight = FontWeight.normal}) =>
      RotatedBox(
          quarterTurns: 3,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
            ).copyWith(color: color).copyWith(fontWeight: fontWeight),
          ));

  void changeValue(var value) {
    if (value >= max - 10) {
      max += 10;
      min += 10;
    } else if (value <= min + 10) {
      if (min >= 10) {
        max -= 10;
        min -= 10;
      }
    }
    val = value;
    _onchange(value);
    setState(() {});
  }
}

class Utils {
  static List<Widget> modelBuilder<M>(
          List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();
}
