import 'package:flutter/material.dart';
import 'game.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InfoOverlay extends StatefulWidget {
  final OverlayTutorial game;

  const InfoOverlay({super.key, required this.game});

  @override
  State<InfoOverlay> createState() => _InfoOverlayState();
}

class _InfoOverlayState extends State<InfoOverlay> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadHtmlString('''
        <html>
          <body style="background-color: lavender; font-family: sans-serif;">
            <h2>Game Info</h2>
            <p>This is a Flame engine overlay demo showing how to use multiple overlays in Flutter.</p>
            <p>Use the buttons on screen to pause or view this info screen.</p>
          </body>
        </html>
      ''');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(220, 0, 0, 0),
      child: Column(
        children: [
          Expanded(child: WebViewWidget(controller: _controller)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                widget.game.overlays.remove('info');
                widget.game.paused = false;
              },
              child: const Text("Close"),
            ),
          ),
        ],
      ),
    );
  }
}
