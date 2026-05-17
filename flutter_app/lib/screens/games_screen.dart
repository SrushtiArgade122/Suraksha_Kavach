import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/app_theme.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disaster Simulations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/dashboard'), // Returns to Home Loop
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () => context.go('/dashboard'),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Simulation Visual
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.videogame_asset_rounded,
                size: 80,
                color: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Interactive Learning Hub",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              "Experience real-time disaster scenarios in a safe, virtual environment. Master your reflexes and decision-making.",
              style: TextStyle(color: AppTheme.textGrey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Launch Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Presentation Tip: Mention Unity/Unreal Engine integration here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Launching Unity Simulation Engine...")),
                  );
                },
                icon: const Icon(Icons.rocket_launch_rounded),
                label: const Text("START SIMULATION"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.safeGreen,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),

            const SizedBox(height: 16),
            TextButton(
              onPressed: () => context.go('/dashboard'),
              child: const Text("Return to Dashboard",
                  style: TextStyle(
                      color: AppTheme.primaryBlue,
                      fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
