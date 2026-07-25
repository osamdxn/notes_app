
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
    const CustomAppBar({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Row(
        children: const  [
          SizedBox(height: 75),
          Text('Notes', style: TextStyle(
              color: Colors.white,
              fontSize: 23,
           ),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      );
    }
  }

 