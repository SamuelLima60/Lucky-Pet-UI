import 'package:flutter/material.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 130,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color(0xffF8CBB4),
          ),
        ),
        Image.asset(
          'assets/images/image.png',
          height: 175,
        ),
        Positioned(
            left: 140,
            top: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Osama',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[800],
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Ready for an amazing and ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'lucky expirience.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
