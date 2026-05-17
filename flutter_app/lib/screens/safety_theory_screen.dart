import 'package:flutter/material.dart';
import '../generated/app_localizations.dart';

class SafetyTheoryScreen extends StatelessWidget {
  final String disasterType; // "Fire", "Earthquake", or "Flood"

  const SafetyTheoryScreen({super.key, required this.disasterType});

  // 🔹 Get localized data dynamically using keys
  Map<String, String> _getLocalizedContent(BuildContext context, int index) {
    final l10n = AppLocalizations.of(context)!;
    final String type = disasterType.toLowerCase();

    // We map the internal logic to your ARB keys: e.g., q_fire_1, tip_fire_1
    final Map<String, Map<String, String>> localizedMap = {
      'fire': {
        'q': _getFireQuestion(l10n, index),
        'tip': _getFireTip(l10n, index),
      },
      'earthquake': {
        'q': _getEarthquakeQuestion(l10n, index),
        'tip': _getEarthquakeTip(l10n, index),
      },
      'flood': {
        'q': _getFloodQuestion(l10n, index),
        'tip': _getFloodTip(l10n, index),
      },
    };

    return localizedMap[type] ?? {'q': 'Unknown', 'tip': ''};
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // UI Theme configuration
    final Color themeColor = disasterType == 'Fire'
        ? Colors.deepOrange
        : disasterType == 'Flood'
            ? Colors.blue.shade800
            : Colors.brown.shade700;

    final IconData themeIcon = disasterType == 'Fire'
        ? Icons.local_fire_department_rounded
        : disasterType == 'Flood'
            ? Icons.water_drop_rounded
            : Icons.vibration_rounded;

    // Localized Disaster Name for Title
    String translatedDisaster = disasterType == 'Fire'
        ? l10n.fireSafety
        : disasterType == 'Flood'
            ? l10n.floodAlert
            : l10n.earthquake;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: themeColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          l10n.resourcesTitle(translatedDisaster),
          style: TextStyle(color: themeColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        itemCount: 20, // Total levels defined in your ARB
        itemBuilder: (context, index) {
          final content = _getLocalizedContent(context, index + 1);

          // Split the tip paragraph into numbered points
          List<String> points = content['tip']!
              .split(RegExp(r'\.\s*'))
              .where((p) => p.trim().isNotEmpty)
              .toList();

          return _buildTheorySection(
            index + 1,
            content['q']!,
            points,
            themeColor,
            themeIcon,
          );
        },
      ),
    );
  }

  // ---------------- UI BUILDERS ----------------

  Widget _buildTheorySection(
      int step, String title, List<String> points, Color color, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: Colors.white, size: 14),
                const SizedBox(width: 8),
                Text(
                  "SECTION $step",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900, color: color),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                ...List.generate(points.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${i + 1}. ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: color,
                                fontSize: 15)),
                        Expanded(
                          child: Text(
                            points[i].trim(),
                            style: TextStyle(
                                fontSize: 15,
                                height: 1.5,
                                color: Colors.blueGrey.shade800),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- LOCALIZATION HELPERS ----------------
  // These map the index (1-20) to the specific ARB getter

  String _getFireQuestion(AppLocalizations l, int i) {
    switch (i) {
      case 1:
        return l.q_fire_1;
      case 2:
        return l.q_fire_2;
      case 3:
        return l.q_fire_3;
      case 4:
        return l.q_fire_4;
      case 5:
        return l.q_fire_5;
      case 6:
        return l.q_fire_6;
      case 7:
        return l.q_fire_7;
      case 8:
        return l.q_fire_8;
      case 9:
        return l.q_fire_9;
      case 10:
        return l.q_fire_10;
      case 11:
        return l.q_fire_11;
      case 12:
        return l.q_fire_12;
      case 13:
        return l.q_fire_13;
      case 14:
        return l.q_fire_14;
      case 15:
        return l.q_fire_15;
      case 16:
        return l.q_fire_16;
      case 17:
        return l.q_fire_17;
      case 18:
        return l.q_fire_18;
      case 19:
        return l.q_fire_19;
      case 20:
        return l.q_fire_20;
      default:
        return "";
    }
  }

  String _getFireTip(AppLocalizations l, int i) {
    switch (i) {
      case 1:
        return l.tip_fire_1;
      case 2:
        return l.tip_fire_2;
      case 3:
        return l.tip_fire_3;
      case 4:
        return l.tip_fire_4;
      case 5:
        return l.tip_fire_5;
      case 6:
        return l.tip_fire_6;
      case 7:
        return l.tip_fire_7;
      case 8:
        return l.tip_fire_8;
      case 9:
        return l.tip_fire_9;
      case 10:
        return l.tip_fire_10;
      case 11:
        return l.tip_fire_11;
      case 12:
        return l.tip_fire_12;
      case 13:
        return l.tip_fire_13;
      case 14:
        return l.tip_fire_14;
      case 15:
        return l.tip_fire_15;
      case 16:
        return l.tip_fire_16;
      case 17:
        return l.tip_fire_17;
      case 18:
        return l.tip_fire_18;
      case 19:
        return l.tip_fire_19;
      case 20:
        return l.tip_fire_20;
      default:
        return "";
    }
  }

  String _getEarthquakeQuestion(AppLocalizations l, int i) {
    switch (i) {
      case 1:
        return l.q_earthquake_1;
      case 2:
        return l.q_earthquake_2;
      case 3:
        return l.q_earthquake_3;
      case 4:
        return l.q_earthquake_4;
      case 5:
        return l.q_earthquake_5;
      case 6:
        return l.q_earthquake_6;
      case 7:
        return l.q_earthquake_7;
      case 8:
        return l.q_earthquake_8;
      case 9:
        return l.q_earthquake_9;
      case 10:
        return l.q_earthquake_10;
      case 11:
        return l.q_earthquake_11;
      case 12:
        return l.q_earthquake_12;
      case 13:
        return l.q_earthquake_13;
      case 14:
        return l.q_earthquake_14;
      case 15:
        return l.q_earthquake_15;
      case 16:
        return l.q_earthquake_16;
      case 17:
        return l.q_earthquake_17;
      case 18:
        return l.q_earthquake_18;
      case 19:
        return l.q_earthquake_19;
      case 20:
        return l.q_earthquake_20;
      default:
        return "";
    }
  }

  String _getEarthquakeTip(AppLocalizations l, int i) {
    switch (i) {
      case 1:
        return l.tip_earthquake_1;
      case 2:
        return l.tip_earthquake_2;
      case 3:
        return l.tip_earthquake_3;
      case 4:
        return l.tip_earthquake_4;
      case 5:
        return l.tip_earthquake_5;
      case 6:
        return l.tip_earthquake_6;
      case 7:
        return l.tip_earthquake_7;
      case 8:
        return l.tip_earthquake_8;
      case 9:
        return l.tip_earthquake_9;
      case 10:
        return l.tip_earthquake_10;
      case 11:
        return l.tip_earthquake_11;
      case 12:
        return l.tip_earthquake_12;
      case 13:
        return l.tip_earthquake_13;
      case 14:
        return l.tip_earthquake_14;
      case 15:
        return l.tip_earthquake_15;
      case 16:
        return l.tip_earthquake_16;
      case 17:
        return l.tip_earthquake_17;
      case 18:
        return l.tip_earthquake_18;
      case 19:
        return l.tip_earthquake_19;
      case 20:
        return l.tip_earthquake_20;
      default:
        return "";
    }
  }

  String _getFloodQuestion(AppLocalizations l, int i) {
    switch (i) {
      case 1:
        return l.q_flood_1;
      case 2:
        return l.q_flood_2;
      case 3:
        return l.q_flood_3;
      case 4:
        return l.q_flood_4;
      case 5:
        return l.q_flood_5;
      case 6:
        return l.q_flood_6;
      case 7:
        return l.q_flood_7;
      case 8:
        return l.q_flood_8;
      case 9:
        return l.q_flood_9;
      case 10:
        return l.q_flood_10;
      case 11:
        return l.q_flood_11;
      case 12:
        return l.q_flood_12;
      case 13:
        return l.q_flood_13;
      case 14:
        return l.q_flood_14;
      case 15:
        return l.q_flood_15;
      case 16:
        return l.q_flood_16;
      case 17:
        return l.q_flood_17;
      case 18:
        return l.q_flood_18;
      case 19:
        return l.q_flood_19;
      case 20:
        return l.q_flood_20;
      default:
        return "";
    }
  }

  String _getFloodTip(AppLocalizations l, int i) {
    switch (i) {
      case 1:
        return l.tip_flood_1;
      case 2:
        return l.tip_flood_2;
      case 3:
        return l.tip_flood_3;
      case 4:
        return l.tip_flood_4;
      case 5:
        return l.tip_flood_5;
      case 6:
        return l.tip_flood_6;
      case 7:
        return l.tip_flood_7;
      case 8:
        return l.tip_flood_8;
      case 9:
        return l.tip_flood_9;
      case 10:
        return l.tip_flood_10;
      case 11:
        return l.tip_flood_11;
      case 12:
        return l.tip_flood_12;
      case 13:
        return l.tip_flood_13;
      case 14:
        return l.tip_flood_14;
      case 15:
        return l.tip_flood_15;
      case 16:
        return l.tip_flood_16;
      case 17:
        return l.tip_flood_17;
      case 18:
        return l.tip_flood_18;
      case 19:
        return l.tip_flood_19;
      case 20:
        return l.tip_flood_20;
      default:
        return "";
    }
  }
}
