import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/notes_model.dart';

class AddNotesCubit extends Cubit<AddNoteStates> {
  AddNotesCubit() : super(AddNoteInatial());
  Color color = const Color(0xff071E21);
  final List<NotesModel> notes = [];
  addNote(NotesModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NotesModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess(notes: notes));
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
