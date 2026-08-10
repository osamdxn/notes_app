import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

   final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? title , subTitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
       children:  [
       const  SizedBox(height: 32),
         CustomTextField(
          onSaved: (value){
              title = value;
          },
           hintText: 'Title',
         ),
          const SizedBox(height: 16),
         CustomTextField(
           onSaved: (value){
              subTitle = value;
          },
           hintText: 'Content',
           maxLines: 5,
         ),
          const SizedBox(height: 16),
         CustomButton(
          onTap: (){
            if(_formKey.currentState!.validate())
            {
                    _formKey.currentState!.save();
            } else {
              _autovalidateMode = AutovalidateMode.always;
              setState(() {
                
              });
            }
          },
         ),
        const SizedBox(height: 16),
       ],
      ),
    );
  }
}

