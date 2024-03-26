import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActive});
  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 34,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colorsList = const [
    Color(0xff0E3B43),
    Color(0xff357266),
    Color(0xffA3BBAD),
    Color(0xff65532F),
    Color.fromARGB(255, 255, 217, 128),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color = colorsList[index];
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ColorItem(
                isActive: currentIndex == index,
                color: colorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
