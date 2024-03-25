import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.notes});
  final NotesModel notes;
  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        CustomAppBar(
          onPressed: () {
            widget.notes.title = title ?? widget.notes.title;
            widget.notes.subTitle = content ?? widget.notes.subTitle;
            widget.notes.save();
            BlocProvider.of<NotesCubit>(context).notes();
            Navigator.pop(context);
          },
          appBartitle: 'Edit Note',
          icon: Icons.check,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          onChanged: (value) {
            title = value;
          },
          title: widget.notes.title,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          onChanged: (value) {
            content = value;
          },
          title: widget.notes.subTitle,
          maxLines: 8,
        ),
      ],
    );
  }
}
