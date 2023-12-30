

import 'package:flutter/material.dart';

class CostumBottom extends StatelessWidget {
  const CostumBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(8)
      ),
      child: const Center(
        child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold) ,),
      ),
    );
  }
}