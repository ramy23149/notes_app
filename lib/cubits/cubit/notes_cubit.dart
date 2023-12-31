import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_state.dart';



class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());
}
