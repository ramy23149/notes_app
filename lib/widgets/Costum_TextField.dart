import 'package:flutter/material.dart';

class CustomTextFiald extends StatelessWidget {
  CustomTextFiald({this.onChanged, this.hintText, this.obscureText = false, this.maxline=1});
   String? hintText;

   int? maxline;

  Function(String)? onChanged;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor: Colors.cyan,
      obscureText: obscureText!,
      onChanged: onChanged,
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
