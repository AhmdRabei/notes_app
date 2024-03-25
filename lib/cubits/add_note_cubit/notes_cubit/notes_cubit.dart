import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  notes() {
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      List<NotesModel> notesList = notesBox.values.toList();
      // List<NotesModel> notes = [];
      emit(NotesSuccess(notes: notesList));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
