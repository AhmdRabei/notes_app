import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.appBartitle, required this.icon});
  final String appBartitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appBartitle,
          style: const TextStyle(
            fontSize: 35,
          ),
        ),
        CustomAppBarButton(
          icon: icon,
        ),
      ],
    );
  }
}
