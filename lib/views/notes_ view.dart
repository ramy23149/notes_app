import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/reed_notes_cubit_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_shet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomShet();
                  });
            },
            child: const Icon(
              Icons.add,
              size: 30,
            ),
            backgroundColor: Colors.cyan,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
