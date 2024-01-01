import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constans/constant.dart';
import 'package:notes_app/cubits/cubit/notes_state.dart';
import 'package:notes_app/models/note_modle.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    try {
      var notesBox = Hive.box(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteLoading());
    } catch (e) {
      AddNoteFailer(e.toString());
    }
  }
}
