
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';
class CustomAppBar extends StatelessWidget {
    const CustomAppBar({super.key, required this.title, required this.icon, required this.onTap});
    final String title ;
    final IconData icon;
    final VoidCallback onTap ;
    @override
    Widget build(BuildContext context) {
      return Row(
        children:   [
          SizedBox(height: 75),
          Text(title,  style:const TextStyle(
              color: Colors.white,
              fontSize: 23,
           ),
          ),
          Spacer(),
          CustomSearchIcon(
            onTap: onTap,
            icon: icon,
          ),
        ],
      );
    }
  }

 