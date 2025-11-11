import 'package:flutter/material.dart';
import 'game.dart';

Widget mainOverlay(BuildContext context, OverlayTutorial game) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              game.paused = true;
              game.overlays.add('pause');
            },
            child: const Text("Pause"),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  game.paused = true;
                  game.overlays.add('info');
                },
                icon: const Icon(Icons.info),
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
