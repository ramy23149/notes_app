import 'package:flutter/material.dart';
import 'package:notes_app/models/note_modle.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 26,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 28, top: 16),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
