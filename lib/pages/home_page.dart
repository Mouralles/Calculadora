import 'package:calculadora/controlles/controller_calc.dart';
import 'package:calculadora/pages/buttons.dart';
import 'package:calculadora/pages/display.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ControllerCalc();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Display(
              value: controller.display,
            ),
          ),
          Expanded(
            flex: 3,
            child: Buttons(
              onButtonClick: controller.onButtonClick,
            ),
          ),
        ],
      ),
    );
  }
}
