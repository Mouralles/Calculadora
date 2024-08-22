// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:calculadora/pages/numbers.dart';
import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButton extends ButtonClick {
  ClearEntryButton(super.value);
}

class Buttons extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;

  const Buttons({
    super.key,
    required this.onButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: [
        NumberDif(
          value: 'C',
          ontap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        NumberDif(
          value: '( )',
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        NumberDif(
          value: '%',
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        NumberDif(
          value: 'CE',
          ontap: (value) => onButtonClick(ClearEntryButton(value)),
        ),
        Numbers(
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
          value: '7',
        ),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '8'),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '9'),
        NumberDif(
          value: '/',
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '4'),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '5'),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '6'),
        NumberDif(
          value: '*',
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '1'),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '2'),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '3'),
        NumberDif(
          value: '+',
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        NumberDif(
          value: ',',
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Numbers(
            ontap: (value) => onButtonClick(CommonButtonClick(value)),
            value: '0'),
        NumberDif(
          value: '-',
          ontap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        NumberDif(
          value: '=',
          ontap: (value) => onButtonClick(EqualsButtonClick(value)),
        ),
      ],
    );
  }
}
