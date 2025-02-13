import 'package:flutter/material.dart';
import 'package:launchpad/constants/colors.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _soundNo = [
    "sound/1.mp3",
    "sound/2.mp3",
    "sound/3.mp3",
    "sound/5.mp3",
    "sound/6.mp3",
    "sound/4.mp3",
    "sound/7.mp3",
    "sound/8.mp3",
    "sound/9.mp3",
    "sound/10.mp3",
    "sound/11.mp3",
    "sound/12.mp3",
    "sound/13.mp3",
    "sound/14.mp3",
    "sound/15.mp3",
    "sound/16.mp3",
    "sound/17.mp3",
    "sound/18.mp3",
    "sound/19.mp3",
    "sound/20.wav",
    "sound/21.mp3",
    "sound/22.wav",
    "sound/23.wav",
    "sound/24.wav",
    "sound/25.wav",
    "sound/26.wav",
    "sound/27.wav",
    "sound/28.wav"
  ];

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: _soundNo.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 8, crossAxisSpacing: 8),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              await Future.delayed(const Duration(milliseconds: 500));
              await player.setAsset(_soundNo[index]);
              player.play();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: MyColors().radialGradientList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
