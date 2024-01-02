import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/reed_notes_cubit_cubit.dart';

import 'package:notes_app/widgets/Notes_list_view.dart';
import 'package:notes_app/widgets/costum_appbar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReedNotesCubitCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CostumAppbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: NotesListViwe())
        ],
      ),
    );
  }
}
