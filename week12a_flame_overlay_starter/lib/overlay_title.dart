import 'package:flutter/material.dart';
import 'game.dart';

class OverlayTitle extends StatelessWidget {
  final OverlayTutorial game;

  const OverlayTitle({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(220, 20, 10, 40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Overlay Tutorial",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                game.overlays.remove('title');
                game.overlays.add('main');
              },
              child: const Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
