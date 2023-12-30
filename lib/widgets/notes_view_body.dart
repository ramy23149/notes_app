import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Costum_note_item.dart';
import 'package:notes_app/widgets/Notes_list_view.dart';
import 'package:notes_app/widgets/costum_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CostumAppbar(title: 'Notes',icon: Icons.search,),
          SizedBox(
            height: 16,
          ),
          Expanded(child: NotesListViwe())
        ],
      ),
    );
  }
}
