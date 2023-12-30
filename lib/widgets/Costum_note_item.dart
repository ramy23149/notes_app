import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,top: 24,bottom: 24),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC79),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(

            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black,fontSize: 26),
            ),
            
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'build your carer with ramy',
                style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 17),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 26,
                  
                )),
          ),
        Padding(
          padding: const EdgeInsets.only(right: 28,top: 16),
          child: Text('21may, 2024',style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 16),),
        )
        ],
      ),
    );
  }
}
