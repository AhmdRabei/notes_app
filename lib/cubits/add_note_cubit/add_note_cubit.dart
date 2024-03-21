import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/notes_model.dart';

class AddNotesCubit extends Cubit<AddNoteStates> {
  AddNotesCubit() : super(AddNoteInatial());
  addNote(NotesModel note) {
    emit(AddNoteInatial());
    try {
      var noteBox = Hive.box<NotesModel>(kNotesBox);
      emit(AddNoteSuccess());
      noteBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
