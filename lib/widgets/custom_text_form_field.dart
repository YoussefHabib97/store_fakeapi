import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String value) onChanged;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  const CustomTextFormField({
    super.key,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(labelText),
          hintText: hintText,
        ),
      ),
    );
  }
}
