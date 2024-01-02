import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constans/constant.dart';
import 'package:notes_app/cubits/cubit/notes_state.dart';
import 'package:notes_app/models/note_modle.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      AddNoteFailer(e.toString());
    }
  }
}
