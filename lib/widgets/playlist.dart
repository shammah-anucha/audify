import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.play_circle_outlined,
                size: 50,
                color: Colors.orange,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("The_frog_prince_Part_1.mp3"),
                Text(
                  "pages 1-10",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Text(
              '12:09',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(),
        )
      ],
    );
  }
}
