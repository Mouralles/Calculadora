import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  final void Function(String value)? ontap;
  final String value;
  const Numbers({super.key, required this.value, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: InkWell(
        onTap: ontap == null ? null : () => ontap!(value),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberDif extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? ontap;
  const NumberDif({super.key, required this.value, this.color, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey,
      child: InkWell(
        onTap: ontap == null ? null : () => ontap!(value),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
