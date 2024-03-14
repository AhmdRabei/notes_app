import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(),
    );
  }
}
