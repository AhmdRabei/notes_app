import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesSuccess) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomNoteCard(
                note: state.notes[index],
              );
            },
          );
        } else {
          return Text('error');
        }
      },
    );
  }
}
