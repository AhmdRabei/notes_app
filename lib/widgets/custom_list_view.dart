import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      List<NotesModel> notesList =
          BlocProvider.of<NotesCubit>(context).notesList!;

      return ListView.builder(
        itemCount: notesList.length,
        itemBuilder: (context, index) {
          return CustomNoteCard(
            note: notesList[index],
          );
        },
      );
    });
  }
}
