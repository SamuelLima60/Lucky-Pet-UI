import 'package:flutter/material.dart';
import 'package:luckypetui/widgets/pets_name_widget.dart';

class CardPets extends StatelessWidget {
  const CardPets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 200,
        width: 180,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PetsNameWidget(),
                  Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.red,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Marly',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black38,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const Text(
                '17 jun 2021',
                style: TextStyle(
                  color: Colors.black26,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
