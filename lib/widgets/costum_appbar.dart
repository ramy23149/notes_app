import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costum_search_icon.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Text('Notes', style: TextStyle(fontSize: 32,),),
        Spacer(),
        CostumSearchIcon()
    
      ],
    );
  }
}

