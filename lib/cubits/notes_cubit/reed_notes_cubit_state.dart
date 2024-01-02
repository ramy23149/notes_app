part of '../notes_cubit/reed_notes_cubit_cubit.dart';

@immutable
sealed class ReedNotesCubitState {}

class ReedNotesCubitInitial extends ReedNotesCubitState {}

class ReedNotesCubitLoading extends ReedNotesCubitState {}

class ReedNotesCubitSuccess extends ReedNotesCubitState {
  final List<NoteModel> notes;

  ReedNotesCubitSuccess(this.notes);
}

class ReedNotesCubitFailer extends ReedNotesCubitState {
  final String errMassage;

  ReedNotesCubitFailer(this.errMassage);
}
