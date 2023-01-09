import 'package:flutter/material.dart';

class PetsNameWidget extends StatelessWidget {
  const PetsNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFF8CBB4),
      ),
      child: const Text(
        'Chuchuca',
        style: TextStyle(
          color: Colors.pink,
        ),
      ),
    );
  }
}
