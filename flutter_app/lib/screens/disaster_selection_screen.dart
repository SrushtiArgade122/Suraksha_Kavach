import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Import the generated localizations
import '../generated/app_localizations.dart';

import 'quiz_levels_screen.dart';
import 'learn_selection_screen.dart';

class DisasterSelectionScreen extends StatefulWidget {
  final String title;
  final Color themeColor;

  const DisasterSelectionScreen({
    super.key,
    required this.title,
    required this.themeColor,
  });

  @override
  State<DisasterSelectionScreen> createState() =>
      _DisasterSelectionScreenState();
}

class _DisasterSelectionScreenState extends State<DisasterSelectionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// ✅ Logic to launch the Sachet NDMA portal
  Future<void> _launchSachetAlerts() async {
    final Uri url = Uri.parse('https://sachet.ndma.gov.in/');
    try {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text("Could not open official alert portal.")),
          );
        }
      }
    } catch (e) {
      debugPrint("Error launching Sachet: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Translate the Disaster Name for the dynamic title
    String translatedDisaster;
    if (widget.title == "Fire") {
      translatedDisaster = l10n.fireSafety;
    } else if (widget.title == "Earthquake") {
      translatedDisaster = l10n.earthquake;
    } else if (widget.title == "Flood") {
      translatedDisaster = l10n.floodAlert;
    } else {
      translatedDisaster = widget.title;
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.0, 0.4, 1.0],
            colors: [
              widget.themeColor.withValues(alpha: 0.12),
              Colors.white.withValues(alpha: 0.8),
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildAppBar(context, l10n, translatedDisaster),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      ScaleTransition(
                        scale: _pulseAnimation,
                        child: _buildTopIllustration(),
                      ),
                      const SizedBox(height: 50),

                      // ✅ 1. INTERACTIVE GAMES (Updated to ShakeAndSurviveApp)
                      // Inside your Column of _buildGradientModuleCard in disaster_selection_screen.dart

                      // ✅ 2. LEARN & WATCH
                      _buildGradientModuleCard(
                        context,
                        title: l10n.learnWatch,
                        subtitle: "Expand your knowledge",
                        gradientColors: [
                          Colors.amberAccent,
                          Colors.orangeAccent
                        ],
                        icon: Icons.play_lesson_rounded,
                        progress: 0.50,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LearnSelectionScreen(
                                  disasterType: widget.title),
                            ),
                          );
                        },
                      ),

                      // ✅ 3. TEST YOUR QUIZ
                      _buildGradientModuleCard(
                        context,
                        title: l10n.testYourQuiz,
                        subtitle: "Check your readiness",
                        gradientColors: [
                          Colors.purpleAccent,
                          Colors.deepPurpleAccent
                        ],
                        icon: Icons.psychology_rounded,
                        progress: 0.60,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                QuizLevelsScreen(disasterType: widget.title),
                          ),
                        ),
                      ),

                      // ✅ 4. LIVE ALERTS (Integrated Sachet NDMA)
                      _buildGradientModuleCard(
                        context,
                        title: l10n.liveRegionAlerts,
                        subtitle: l10n.realTimeUpdates,
                        gradientColors: [Colors.redAccent, Colors.pinkAccent],
                        icon: Icons.vibration_rounded,
                        progress: 1.0,
                        isAlert: true,
                        onTap: () => _launchSachetAlerts(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(
      BuildContext context, AppLocalizations l10n, String disasterTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white.withValues(alpha: 0.8),
              foregroundColor: Colors.black87,
              elevation: 2,
            ),
          ),
          Text(
            l10n.preparednessTitle(disasterTitle),
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xFF1A237E)),
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person_outline_rounded, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildTopIllustration() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: widget.themeColor.withValues(alpha: 0.2),
            blurRadius: 25,
            spreadRadius: 5,
          )
        ],
      ),
      child: Icon(_getIcon(), size: 50, color: widget.themeColor),
    );
  }

  Widget _buildGradientModuleCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required List<Color> gradientColors,
    required IconData icon,
    required double progress,
    bool isAlert = false,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: gradientColors[1].withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: gradientColors,
                    ).createShader(bounds),
                    child: Icon(icon, color: Colors.white, size: 28),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF1A237E))),
                      const SizedBox(height: 8),
                      isAlert
                          ? Text(subtitle,
                              style: TextStyle(
                                  color: gradientColors[1],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13))
                          : LinearProgressIndicator(
                              value: progress,
                              backgroundColor: Colors.grey[100],
                              color: gradientColors[1],
                              minHeight: 6,
                              borderRadius: BorderRadius.circular(10),
                            ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded,
                    size: 14, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getIcon() {
    if (widget.title == "Fire") return Icons.local_fire_department_rounded;
    if (widget.title == "Flood") return Icons.water_drop_rounded;
    return Icons.vibration_rounded;
  }
}
