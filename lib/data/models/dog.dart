import '../interface/pet.dart';
import '../interface/trainable.dart';
import 'animal.dart';

class Dog implements Pet, Trainable, Animal {
  @override
  eat() {
    // TODO: implement eat
    return 'Dog is eating';
  }

  @override
  play() {
    // TODO: implement play
    return 'Dog is playing';
  }

  @override
  train() {
    // TODO: implement train
    return 'Dog is training';
  }

  @override
  makeSound() {
    return 'woof woof ruff ruff arf arf';
  }
}
