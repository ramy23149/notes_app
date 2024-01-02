import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constans/constant.dart';

import 'package:notes_app/models/note_modle.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_%20view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);
=======
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constans/constant.dart';
import 'package:notes_app/views/notes_%20view.dart';

void main() async {
  await Hive.initFlutter();

await Hive.openBox(kNotesBox);
>>>>>>> 6f8130e3485e56b3736b48adb9408077a34233d8
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
