import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShakeSurviveWebScreen extends StatefulWidget {
  const ShakeSurviveWebScreen({super.key});

  @override
  State<ShakeSurviveWebScreen> createState() => _ShakeSurviveWebScreenState();
}

class _ShakeSurviveWebScreenState extends State<ShakeSurviveWebScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xFF303045))
      ..loadFlutterAsset('assets/web/index.html'); // 👈 Loads your HTML
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar allows users to exit the game
      appBar: AppBar(
        title: const Text("Shake & Survive"),
        backgroundColor: const Color(0xFF1A237E),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
