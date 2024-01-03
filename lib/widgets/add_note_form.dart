import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/cubits/cubit/notes_state.dart';
import 'package:notes_app/models/note_modle.dart';
import 'package:notes_app/widgets/Costum_TextField.dart';
import 'package:notes_app/widgets/Costum_buttom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFiald(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiald(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxline: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNotesCubit, AddNoteState>(
            builder: (context, state) {
              return CostumBottom(
                isloading: state is AddNoteLoading ? true : false,
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime now = DateTime.now();
                    String formattedDate = DateFormat.yMd().format(now);

                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      color: Colors.blue.value,
                      date: formattedDate,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
