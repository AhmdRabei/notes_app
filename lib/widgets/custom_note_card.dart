import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({
    super.key,
    required this.note,
  });
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNoteView.id);
        },
        child: Container(
          padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  note.subTitle,
                  style: const TextStyle(
                    fontSize: 23,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).notes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: const TextStyle(fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
