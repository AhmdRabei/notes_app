import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        CustomAppBar(
          appBartitle: 'Edit Note',
          icon: Icons.check,
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextField(title: 'title'),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          title: 'content',
          maxLines: 8,
        ),
      ],
    );
  }
}
