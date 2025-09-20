import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.label,
    required this.hint,
    this.value,
    required this.onChanged,
    super.key,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  });
  final String label;
  final String hint;
  final String? value;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(labelText: label, hintText: hint),
      onChanged: onChanged,
    );
  }
}
