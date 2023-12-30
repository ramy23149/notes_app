import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Costum_TextField.dart';
import 'package:notes_app/widgets/Costum_buttom.dart';

class AddNoteBottomShet extends StatelessWidget {
  const AddNoteBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32,),
            CustomTextFiald(hintText: 'Title'),
            const SizedBox(height: 16,),
            CustomTextFiald(hintText: 'Content',maxline: 5,),
            const SizedBox(height: 32,),
            const CostumBottom(),
            const SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
