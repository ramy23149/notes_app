import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add,size: 30,),
          backgroundColor: Colors.cyan,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)),
              
        ),
      ),
      body: NotesViewBody(),
    );
  }
}
