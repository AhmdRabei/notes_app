import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomNoteCard();
      },
    );
  }
}
