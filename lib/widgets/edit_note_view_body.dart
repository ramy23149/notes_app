import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Costum_TextField.dart';
import 'package:notes_app/widgets/costum_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        children: [
          SizedBox(height: 35,),
          CostumAppbar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 50,),
            CustomTextFiald(hintText: 'Title', maxline: 1,),
            SizedBox(height: 30,),
              CustomTextFiald(hintText: 'Contant', maxline: 5,),
            


        ],
      ),
    );
  }
}