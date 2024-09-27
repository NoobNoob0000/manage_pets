import 'package:flutter/material.dart';
import 'package:manage_pets/core/context/text_styles.dart';

class Control extends StatefulWidget {
  const Control({super.key, required this.onChanged, required this.petTypes});

  final Function(String?)? onChanged;
  final List<String> petTypes;

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Add pet to box',
          style: AppTextStyle.title(context),
        ),
        //SizedBox(width: 10,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black38, width: 2),
          ),
          child: DropdownButton<String>(
            hint: const Text('Select Pet'),
            icon: const Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.black54,
            ), // Custom icon
            iconSize: 24,
            style: AppTextStyle.content(context), // Text style for items
            underline: const SizedBox(), // Remove default underline
            //dropdownColor:,
            items: widget.petTypes.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: widget.onChanged,
          ),
        ),
      ],
    );
  }
}
