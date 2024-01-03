import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costum_search_icon.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
        const Spacer(),
        CostumIcon(icon: icon,
        onPressed: onPressed,
        )
      ],
    );
  }
}
