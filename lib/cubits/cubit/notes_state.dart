
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailer extends AddNoteState {
  final String errorMassage;

  AddNoteFailer(this.errorMassage);
}
