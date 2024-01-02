import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_modle.dart';

part 'reed_notes_cubit_state.dart';

class ReedNotesCubitCubit extends Cubit<ReedNotesCubitState> {
  ReedNotesCubitCubit() : super(ReedNotesCubitInitial());
}
