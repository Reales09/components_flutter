import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),

          // Switch(
          //   activeColor: AppTheme.primary,
          //   value: _sliderEnabled,
          //   onChanged: (value) => setState(() {
          //     _sliderEnabled = value;
          //   }),
          // ),
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/originals/64/e4/89/64e489777ab83d7e5644fa7a8d7368f1.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
