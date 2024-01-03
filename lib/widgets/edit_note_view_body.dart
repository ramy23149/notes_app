import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constans/constant.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/reed_notes_cubit_cubit.dart';
import 'package:notes_app/models/note_modle.dart';
import 'package:notes_app/widgets/Costum_TextField.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/costum_appbar.dart';
import 'package:notes_app/widgets/edit_note_colors_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CostumAppbar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;

              widget.note.save();

              BlocProvider.of<ReedNotesCubitCubit>(context).fetchAllNotes();

              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFiald(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
            maxline: 1,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFiald(
            note: widget.note,
            onChanged: (value) {
              content = value;
            },
            hintText: 'Contant',
            maxline: 5,
          ),
          EditNoteColorsList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
