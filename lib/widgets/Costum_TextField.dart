import 'package:flutter/material.dart';

class CustomTextFiald extends StatelessWidget {
  const CustomTextFiald(
      {super.key, this.onSaved, this.hintText, this.maxline = 1});
  final String? hintText;

  final int? maxline;

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxline,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.cyan),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
