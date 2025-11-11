import 'package:flutter/material.dart';
import 'game.dart';

Widget pauseOverlay(BuildContext context, OverlayTutorial game) {
  return Material(
    color: const Color.fromARGB(220, 0, 0, 0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Game Paused",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              game.paused = false;
              game.overlays.remove('pause');
            },
            child: const Text("Resume"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              game.overlays.remove('pause');
              game.overlays.add('title');
            },
            child: const Text("Quit to Title"),
          ),
        ],
      ),
    ),
  );
}
