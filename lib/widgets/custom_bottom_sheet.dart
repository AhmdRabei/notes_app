import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomBottomShet extends StatelessWidget {
  const CustomBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              title: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              title: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(buttonTitle: 'Add Note'),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
