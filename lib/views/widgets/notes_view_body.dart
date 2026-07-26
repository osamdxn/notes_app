import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children:  [
          const SizedBox(height: 20),
          CustomAppBar(
            title: kAppName,
            icon: Icons.search,
            onTap: (){},
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


