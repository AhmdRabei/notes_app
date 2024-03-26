import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.notes});
  final NotesModel notes;

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColorsList.indexOf(Color(widget.notes.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.notes.color = kColorsList[index].value;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
