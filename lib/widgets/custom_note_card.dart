import 'package:flutter/material.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Make your own future with flutter ',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ),
          const Text(
            'May 22 ,2022',
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
