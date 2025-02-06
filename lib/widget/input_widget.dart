import 'package:flutter/material.dart';


class InputWidget extends StatelessWidget{
 
  final String label;
  final TextEditingController controller;

  const InputWidget({
    super.key,
    required this.label,
    required this.controller,
    });


  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(vertical:16,horizontal:24),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(label),
        ),
      ),
    );
  }
}