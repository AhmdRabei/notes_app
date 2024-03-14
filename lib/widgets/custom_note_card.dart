import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
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
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text(
              'May 22 ,2022',
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
