import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Costum_TextField.dart';
import 'package:notes_app/widgets/costum_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        children: [
          const SizedBox(height: 35,),
          const CostumAppbar(title: 'Edit Note',icon: Icons.check,),
          const SizedBox(height: 50,),
            CustomTextFiald(hintText: 'Title', maxline: 1,),
            const SizedBox(height: 30,),
              CustomTextFiald(hintText: 'Contant', maxline: 5,),
            


        ],
      ),
    );
  }
}