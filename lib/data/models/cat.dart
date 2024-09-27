import '../interface/pet.dart';
import '../interface/trainable.dart';
import 'animal.dart';

class Cat implements Pet, Trainable, Animal {
  @override
  eat() {
    // TODO: implement eat
    return 'Cat is eating';
  }

  @override
  play() {
    // TODO: implement play
    return 'Cat is playing';
  }

  @override
  train() {
    // TODO: implement train
    return 'Cat is training';
  }

  @override
  makeSound() {
    return 'meow mow mrow mrrr prr prrt hh';
  }
}
