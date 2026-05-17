import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// 1. Corrected Import Path for Localization
import '../generated/app_localizations.dart';

class QuizLevelsScreen extends StatefulWidget {
  final String disasterType;

  const QuizLevelsScreen({super.key, required this.disasterType});

  @override
  State<QuizLevelsScreen> createState() => _QuizLevelsScreenState();
}

class _QuizLevelsScreenState extends State<QuizLevelsScreen> {
  bool basicsCompleted = false;

  @override
  Widget build(BuildContext context) {
    // 2. Initialize Localization
    final l10n = AppLocalizations.of(context)!;

    // 3. Translate the Disaster Name for descriptions
    String translatedDisaster;
    if (widget.disasterType == "Fire") {
      translatedDisaster = l10n.fireSafety;
    } else if (widget.disasterType == "Earthquake") {
      translatedDisaster = l10n.earthquake;
    } else if (widget.disasterType == "Flood") {
      translatedDisaster = l10n.floodAlert;
    } else {
      translatedDisaster = widget.disasterType;
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      body: CustomScrollView(
        slivers: [
          /// 🔷 APP BAR (Localized)
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            backgroundColor: const Color(0xFF1A237E),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.white),
              onPressed: () => context.pop(),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                l10n.modulesTitle(translatedDisaster), // Localized Title
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF1A237E), Color(0xFF3949AB)],
                  ),
                ),
              ),
            ),
          ),

          /// 🔷 MODULE LIST
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                /// ✅ BASICS MODULE (Localized)
                _buildModuleCard(
                  context,
                  level: 1,
                  title: l10n.theBasics,
                  desc: l10n.levelsFundamental
                      .replaceFirst('{disaster}', translatedDisaster),
                  isLocked: false,
                  onTap: () async {
                    final result = await context.push<bool>(
                      '/quiz-grid?disaster=${widget.disasterType}&category=The Basics',
                    );

                    if (!mounted) return;

                    // ✅ Unlock next module
                    if (result == true) {
                      setState(() {
                        basicsCompleted = true;
                      });
                    }
                  },
                ),

                /// ✅ DURING EVENT (Localized)
                _buildModuleCard(
                  context,
                  level: 2,
                  title: l10n.duringEvent,
                  desc: l10n.immediateSteps,
                  isLocked: !basicsCompleted,
                  onTap: () {
                    context.push(
                      '/quiz-grid?disaster=${widget.disasterType}&category=During Event',
                    );
                  },
                ),

                /// ✅ RECOVERY (Localized)
                _buildModuleCard(
                  context,
                  level: 3,
                  title: l10n.recovery,
                  desc: l10n.safeCleanup,
                  isLocked: true,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  /// 🔷 MODULE CARD UI
  Widget _buildModuleCard(
    BuildContext context, {
    required int level,
    required String title,
    required String desc,
    required bool isLocked,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 15,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: isLocked ? null : onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              /// LEVEL ICON
              CircleAvatar(
                radius: 28,
                backgroundColor:
                    isLocked ? Colors.grey[300] : Colors.blueAccent,
                child: isLocked
                    ? const Icon(Icons.lock, color: Colors.white)
                    : Text(
                        "$level",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
              ),

              const SizedBox(width: 20),

              /// TEXT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: isLocked ? Colors.grey : const Color(0xFF1A237E),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      desc,
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              /// ARROW
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
