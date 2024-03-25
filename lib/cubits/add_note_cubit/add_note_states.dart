import 'package:notes_app/models/notes_model.dart';

class AddNoteStates {}

class AddNoteInatial extends AddNoteStates {}

class AddNoteLoading extends AddNoteStates {}

class AddNoteSuccess extends AddNoteStates {
  final List<NotesModel> notes;

  AddNoteSuccess({required this.notes});
}

class AddNoteFailure extends AddNoteStates {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
