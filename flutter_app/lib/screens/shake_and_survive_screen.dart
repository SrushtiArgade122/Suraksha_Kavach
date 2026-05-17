import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ---------------- COLORS & STYLES ----------------
class GameColors {
  static const Color primaryBlue = Color(0xFFD9EAF3);
  static const Color buttonBlue = Color(0xFF8BB7D9);
  static const Color buttonOrange = Color(0xFFF79F51);
}

// ---------------- APP ENTRY ----------------
class ShakeAndSurviveApp extends StatelessWidget {
  const ShakeAndSurviveApp({super.key}); // ✅ Fixed: super.key

  @override
  Widget build(BuildContext context) {
    return const MainMenu();
  }
}

// ---------------- MAIN MENU (FLUTTER) ----------------
class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GameColors.primaryBlue,
      body: SafeArea(
        child: Stack(
          // ✅ Added Stack to place Back Button on top of everything
          children: [
            // --- MAIN CONTENT ---
            Column(
              children: [
                const SizedBox(height: 60), // Space for the back button area
                _buildTopDashboard(100, 1225),
                const Spacer(),
                const Text("SHAKE AND",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF2C5273))),
                const Text("SURVIVE",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFD97925))),
                const Text("Earthquake Hero",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: GameColors.buttonBlue,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5)),
                  child:
                      const Icon(Icons.security, size: 80, color: Colors.white),
                ),
                const Spacer(),
                _menuButton(context, "Start Mission", GameColors.buttonOrange),
                _menuButton(context, "View Badges", GameColors.buttonBlue),
                _menuButton(context, "Settings", GameColors.buttonBlue),
                const SizedBox(height: 40),
              ],
            ),

            // --- BACK BUTTON ---
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    size: 30,
                    color: Color(0xFF2C5273)), // Matching your dark blue text
                onPressed: () {
                  Navigator.pop(context); // ✅ Goes back to your Dashboard
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopDashboard(int hp, int score) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black87, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _statItem(Icons.favorite, "Health", hp.toString(), Colors.red),
            _statItem(Icons.star, "Score", score.toString(), Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _statItem(IconData icon, String label, String val, Color col) {
    return Row(children: [
      Icon(icon, color: col),
      const SizedBox(width: 8),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        Text(val,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
      ])
    ]);
  }

  Widget _menuButton(BuildContext context, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 50),
      child: GestureDetector(
        onTap: () {
          if (text == "Start Mission") {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const GameScreen()));
          }
        },
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black87, width: 2),
          ),
          child: Center(
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        ),
      ),
    );
  }
}

// ---------------- GAME SCREEN (LOOPS HTML CODE) ----------------
class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // ✅ This connects your HTML logic (Coordinate mapping, etc.) to the Flutter screen
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xFFD9EAF3))
      ..loadFlutterAsset('assets/web/index.html'); // 👈 Path to your HTML file
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // The HTML Game Body
            WebViewWidget(controller: _controller),

            // Flutter UI Overlay (Back button)
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    size: 30, color: Colors.black54),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
