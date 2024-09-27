import 'package:flutter/material.dart';
import 'package:manage_pets/features/manage_pets/widgets/control.dart';
import 'package:manage_pets/features/manage_pets/widgets/pet_box.dart';

import '../../data/interface/pet.dart';
import '../../data/models/box.dart';
import '../../data/models/cat.dart';
import '../../data/models/dog.dart';

class ManagePetScreen extends StatefulWidget {
  const ManagePetScreen({super.key});

  @override
  State<ManagePetScreen> createState() => _ManagePetScreenState();
}

class _ManagePetScreenState extends State<ManagePetScreen> {
  final Box<Pet> petBox = Box<Pet>();
  final List<String> petTypes = ['Dog', 'Cat'];

  void _addPet(String type) {
    if (type == 'Dog') {
      petBox.add(Dog());
    } else if (type == 'Cat') {
      petBox.add(Cat());
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Control(
              onChanged: (String? newValue) {
                if (newValue != null) {
                  _addPet(newValue);
                }
              },
              petTypes: petTypes,
            ),
            PetBox(petBox: petBox),
          ],
        ),
      ),
    );
  }
}
