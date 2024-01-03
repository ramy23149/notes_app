import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constans/constant.dart';

import 'package:notes_app/models/note_modle.dart';

part 'reed_notes_cubit_state.dart';

class ReedNotesCubitCubit extends Cubit<ReedNotesCubitState> {
  ReedNotesCubitCubit() : super(ReedNotesCubitInitial());

  List<NoteModel>? notes;

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();

    emit(ReedNotesSuccess());
  }
}
