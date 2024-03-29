import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:spotify/utils/spaces.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  Color songColor = const Color(0xFF490F0A);
  String songTitle = "ChipiChapa";
  String artistName = "dubidubi";
  bool like = false;
  bool play = false;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: songColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Space.h10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.expand_more_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "song title",
                  style: textTheme.titleMedium?.copyWith(color: Colors.grey),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Space.h40,
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: screenSize.height * 0.4,
                    width: screenSize.width * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                  ),
                  Space.h60,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            songTitle,
                            style: textTheme.titleLarge
                                ?.copyWith(color: Colors.grey),
                          ),
                          Text(
                            artistName,
                            style: textTheme.titleMedium
                                ?.copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: like
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                        onPressed: () {
                          setState(() {
                            like = !like;
                          });
                        },
                      )
                    ],
                  ),
                  Space.h30,
                  ProgressBar(
                    progress: const Duration(milliseconds: 1000),
                    total: const Duration(milliseconds: 5000),
                    progressBarColor: Colors.white30,
                    baseBarColor: Colors.grey,
                    thumbColor: Colors.white,
                    barHeight: 4.0,
                    thumbRadius: 8,
                    timeLabelTextStyle:
                        const TextStyle(fontSize: 13, color: Colors.grey),
                    onSeek: (duration) {
                      print('User selected a new time: $duration');
                    },
                  ),
                  Space.h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.swap_horiz_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.skip_previous,
                          color: Colors.grey,
                          size: 50,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            play = !play;
                          });
                        },
                        icon: play
                            ? const Icon(
                                Icons.play_circle,
                                color: Colors.grey,
                                size: 80,
                              )
                            : const Icon(
                                Icons.pause_circle,
                                color: Colors.grey,
                                size: 80,
                              ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.skip_next,
                          color: Colors.grey,
                          size: 50,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.loop,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
