import 'package:flutter/material.dart';
import 'package:notes_app/models/note_modle.dart';

class CustomTextFiald extends StatefulWidget {
  const CustomTextFiald({
    super.key,
    this.onSaved,
    this.hintText,
    this.maxline = 1,
    this.onChanged,
    this.note,
  });
  final String? hintText;

  final int? maxline;
  final Function(String)? onChanged;

  final Function(String?)? onSaved;
  final NoteModel? note;
   
  @override
  State<CustomTextFiald> createState() => _CustomTextFialdState();
}

class _CustomTextFialdState extends State<CustomTextFiald> {
  late TextEditingController titleController;
  late TextEditingController contentController;

  @override
  void initState() {
    titleController = TextEditingController(text: widget.note?.title);
    contentController = TextEditingController(text: widget.note?.subTitle);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    

    
    return TextFormField(
      controller: contentController,
      onChanged: widget.onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: widget.onSaved,
      maxLines: widget.maxline,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.cyan),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
