import 'package:flutter/material.dart';
import '../generated/app_localizations.dart';
import 'safety_theory_screen.dart';
import 'video_tutorial_screen.dart';

class LearnSelectionScreen extends StatelessWidget {
  final String disasterType; // "Fire", "Earthquake", or "Flood"

  const LearnSelectionScreen({super.key, required this.disasterType});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // 1. Map the internal disasterType String to the Localized String
    final translatedDisaster = _getLocalizedDisasterName(l10n, disasterType);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF1A237E)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          // Uses the ARB placeholder: "resourcesTitle": "{disaster} Resources"
          l10n.resourcesTitle(translatedDisaster),
          style: const TextStyle(
              color: Color(0xFF1A237E), fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // --- HEADER SECTION ---
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF1A237E).withValues(alpha: 0.1),
                  const Color(0xFFF8FAFF),
                ],
              ),
            ),
            child: Column(
              children: [
                _buildCircularIcon(disasterType),
                const SizedBox(height: 20),
                Text(
                  l10n.chooseHowLearn,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // --- SELECTION CARDS ---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                _buildLearnCard(
                  context,
                  title: l10n.readSafetyTips,
                  subtitle: l10n.flashcardsGuidelines,
                  icon: Icons.auto_stories_rounded,
                  color: Colors.orange,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SafetyTheoryScreen(disasterType: disasterType),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildLearnCard(
                  context,
                  title: l10n.watchVideos,
                  subtitle: l10n.visualSurvivalGuides,
                  icon: Icons.play_circle_fill_rounded,
                  color: Colors.redAccent,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          VideoTutorialScreen(disasterType: disasterType),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  // Helper to translate the category name based on the internal type
  String _getLocalizedDisasterName(AppLocalizations l10n, String type) {
    switch (type) {
      case 'Fire':
        return l10n.fireSafety;
      case 'Earthquake':
        return l10n.earthquake;
      case 'Flood':
        return l10n.floodAlert;
      default:
        return type;
    }
  }

  Widget _buildCircularIcon(String type) {
    IconData icon;
    switch (type) {
      case 'Fire':
        icon = Icons.local_fire_department_rounded;
        break;
      case 'Earthquake':
        icon = Icons.vibration_rounded;
        break;
      case 'Flood':
        icon = Icons.water_drop_rounded;
        break;
      default:
        icon = Icons.shield_rounded;
    }
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 20, offset: Offset(0, 10))
          ]),
      child: Icon(icon, size: 60, color: const Color(0xFF1A237E)),
    );
  }

  Widget _buildLearnCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: color.withValues(alpha: 0.1),
                blurRadius: 20,
                offset: const Offset(0, 10))
          ],
          border: Border.all(color: color.withValues(alpha: 0.2)),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color.withValues(alpha: 0.1),
              child: Icon(icon, color: color, size: 30),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A237E))),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      style:
                          TextStyle(color: Colors.blueGrey[300], fontSize: 13)),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, size: 16, color: color),
          ],
        ),
      ),
    );
  }
}
