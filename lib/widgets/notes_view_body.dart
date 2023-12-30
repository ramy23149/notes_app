import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costum_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CostumAppbar(),
          NoteItem()
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(

            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              'build your carer with ramy',
              style: TextStyle(color: Colors.black),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                )),
          ),
        Text('21may, 2024',style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}
