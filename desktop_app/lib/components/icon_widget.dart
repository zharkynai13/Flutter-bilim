import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// final AudioPlayer audioPlayer = AudioPlayer();

Widget buildIconTableCell(IconData icon, Color color) {
  return TableCell(
    child: InkWell(
      // onTap: () {
      //   playMusic(); // Call the playMusic() method when the icon is pressed
      // },
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Icon(icon, color: color),
      ),
    ),
  );
}

// void playMusic() {
//   String audioPath = "assets/ring/ring.mp3"; // Replace with your audio file path
//   audioPlayer.play(audioPath as Source, isLocal: true).then((result) {
//     if (result == 1) {
//       // Success
//       print('Audio playing');
//     } else {
//       // Failed to play audio
//       print('Failed to play audio');
//     }
//   }).catchError((error) {
//     // Handle any errors that occur during audio playback
//     print('Error playing audio: $error');
//   });
// }






