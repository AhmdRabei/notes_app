import 'package:flutter/material.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      height: 50,
      width: 50,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
    );
  }
}
