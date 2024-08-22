import 'package:calculadora/pages/buttons.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class ControllerCalc extends ChangeNotifier {
  var display = '0';

  void onButtonClick(ButtonClick click) {
    if (display == '0') {
      display = '';
    }

    if (click is CommonButtonClick) {
      display += click.value;
      notifyListeners();
    } else if (click is ClearButtonClick) {
      display = '0';
    } else if (click is ClearEntryButton) {
      display = '0';
    } else if (click is EqualsButtonClick) {
      final v = display.interpret();
      display = '$v';
    }
    notifyListeners();
  }
}
