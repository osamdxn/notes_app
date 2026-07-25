 
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
   const NotesView({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      // appBar: AppBar(
      //    actions: [
      //     Container(
      //       child: Icon(Icons.search)),
      //    ],
      // ),
      body:  NotesViewBody(

      ),
     );
   }
 }
