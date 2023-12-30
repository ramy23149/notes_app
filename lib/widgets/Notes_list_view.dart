import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Costum_note_item.dart';

class NotesListViwe extends StatelessWidget {
  const NotesListViwe({super.key,});

final data = const [
    Color(0xffFFCC79),
    Color(0xffE5E794),
    Color(0xff76D6EE),
    Color(0xffD89EDB)
  ];
  

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(color: data.first,),
        );
      }),
    );
  }
}
