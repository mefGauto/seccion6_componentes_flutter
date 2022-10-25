import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/theme/app_theme.dart';

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
        title: const Text('Slider'),
      ),
      body: Column(children: <Widget>[
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
              : null,
        ),
        //Checkbox(
        //  value: _sliderEnabled,
        //  onChanged: (value) {
        //    _sliderEnabled = value ?? true;
        //    setState(() {});
        //  },
        //Switch(
        //  value: _sliderEnabled,
        //  onChanged: (value) {
        //    _sliderEnabled = value;
        //    setState(() {});
        //  },
        //),
        CheckboxListTile(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar o deshabilitar el Slider'),
          value: _sliderEnabled,
          onChanged: (value) {
            _sliderEnabled = value ?? true;
            setState(() {});
          },
        ),
        SwitchListTile.adaptive(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar o deshabilitar el Slider'),
          value: _sliderEnabled,
          onChanged: (value) {
            _sliderEnabled = value;
            setState(() {});
          },
        ),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://www.kindpng.com/picc/m/612-6121365_roronoa-zoro-hd-png-download.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
