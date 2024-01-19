import 'package:flutter/material.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.expand_more_rounded,
                  size: 40,
                ),
                Text(
                  "song title",
                  style: TextStyle(fontSize: 16),
                ),
                Icon(
                  Icons.close_rounded,
                  size: 30,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenSize.height * 0.35,
                  width: screenSize.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12,
                  ),
                ),
                const Text(
                  "Song Title",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Song Title",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
