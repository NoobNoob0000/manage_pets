import 'package:flutter/material.dart';
import 'package:manage_pets/data/interface/pet.dart';
import 'package:manage_pets/data/models/box.dart';

import '../../../core/context/text_styles.dart';
import '../../../data/models/dog.dart';

class PetBox extends StatefulWidget {
  const PetBox({super.key, required this.petBox});

  final Box<Pet> petBox;

  @override
  State<PetBox> createState() => _PetBoxState();
}

class _PetBoxState extends State<PetBox> {
  @override
  Widget build(BuildContext context) {
    var petBox = widget.petBox;

    return Expanded(
      child: ListView.builder(
        itemCount: petBox.getAll().length,
        itemBuilder: (context, index) {
          final pet = petBox.getAll()[index];
          return ListTile(
            title: Text(pet is Dog ? 'Dog' : 'Cat'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  onPressed: () {
                    _showAlert(context, pet, pet.makeSound());
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {
                    _showAlert(context, pet, pet.play());
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.food_bank),
                  onPressed: () {
                    _showAlert(context, pet, pet.eat());
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.train),
                  onPressed: () {
                    _showAlert(context, pet, pet.train());
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showAlert(BuildContext context, Pet pet, String petActions) {
    var okButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
        setState(() {});
      },
      child: Text(
        "Close",
        style: AppTextStyle.buttonText(context),
      ),
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            pet is Dog ? 'Dog' : 'Cat',
            style: AppTextStyle.title(context),
          ),
          content: Text(
            petActions,
            style: AppTextStyle.content(context),
          ),
          actions: [okButton],
        );
      },
    );
  }
}
