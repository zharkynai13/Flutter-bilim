import 'package:flutter/material.dart';

class RauntedBTN extends StatelessWidget {
  final IconData icon;
  final Function(int) remove;
  final Function(int) add;
  final int value;
  final Color color;
  const RauntedBTN({super.key, 
  required this.icon,
  required this.remove,
  required this.add,
  required this.value,
  required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed:  () => remove(value - 1),
          elevation: 0,
          constraints: const BoxConstraints.tightFor(height: 56,width: 56),
          shape:  CircleBorder(),
          fillColor: color,
          )
      ],
    );
}
}