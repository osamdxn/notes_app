
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
    const CustomNoteItem({super.key});
    
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color:const Color(0xFFFFD47A),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: const Text('Flutter Tips',style: TextStyle(
                   color: Colors.black,
                   fontSize: 24,
                 ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Build Your Career with  Osama Essa',style: TextStyle(
                     color: Colors.black.withValues(alpha: 0.5),
                     fontSize: 14,
                    ),
                   ),
                ),
                trailing: IconButton(
                  onPressed: (){}, 
                  icon:Icon(FontAwesomeIcons.trash,color: Colors.black,size: 20,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('May 21 , 2022',style: TextStyle(
                 color:  Colors.black.withValues(alpha: 0.5),
               )
              ),
            ),
          ],
        ),
      );
    }
  }