import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../generated/app_localizations.dart';
import '../services/quiz_service.dart';

class QuizGridScreen extends StatefulWidget {
  final String disasterType;
  final String categoryTitle;

  const QuizGridScreen({
    super.key,
    required this.disasterType,
    required this.categoryTitle,
  });

  @override
  State<QuizGridScreen> createState() => _QuizGridScreenState(); // ✅ Fixed Name
}

// ✅ Changed class name from _LoginScreenState to _QuizGridScreenState
class _QuizGridScreenState extends State<QuizGridScreen> {
  final int totalLevels = 20;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final quizService = context.watch<QuizService>();
    final int unlockedUpTo = quizService.getUnlockedLevel(widget.disasterType);

    String translatedDisaster = widget.disasterType == 'Fire'
        ? l10n.fireSafety
        : widget.disasterType == 'Flood'
            ? l10n.floodAlert
            : l10n.earthquake;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 152, 207, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 108, 91, 241),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "$translatedDisaster: ${l10n.theBasics}",
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          _buildProgressStats(l10n, quizService),
          const SizedBox(height: 10),
          _buildSelectionBanner(l10n),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemCount: totalLevels,
              itemBuilder: (context, index) {
                final int levelNum = index + 1;
                final bool isLocked = levelNum > unlockedUpTo;
                final bool isCurrent = levelNum == unlockedUpTo;

                return _buildLevelBox(l10n, levelNum, isLocked, isCurrent);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLevelBox(
      AppLocalizations l10n, int num, bool isLocked, bool isCurrent) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          if (isLocked) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("🔒 ${l10n.cancel}")),
            );
            return;
          }
          _showPrepMenu(context, num, l10n);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: isLocked
                ? Colors.grey[300]
                : (isCurrent ? Colors.white : Colors.blueAccent),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: isCurrent ? Colors.blueAccent : Colors.transparent,
                width: 3),
          ),
          child: Center(
            child: isLocked
                ? Icon(Icons.lock_outline_rounded,
                    color: Colors.grey[500], size: 20)
                : Text("$num",
                    style: TextStyle(
                        color: isCurrent ? Colors.blueAccent : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }

  void _showPrepMenu(BuildContext context, int level, AppLocalizations l10n) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.levelNumber(level),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A237E))),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1A237E),
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () async {
                Navigator.pop(context);
                await context.push<bool>(
                  '/quiz?disaster=${widget.disasterType}&level=$level',
                );
              },
              child: Text(l10n.startQuiz,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressStats(AppLocalizations l10n, QuizService service) {
    final double progress = service.getProgress(widget.disasterType);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.yourProgress,
                  style: const TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold)),
              Text("${(progress * 100).toInt()}%",
                  style: const TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.w900)),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor: Colors.grey[100],
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectionBanner(AppLocalizations l10n) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.redAccent.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        l10n.selectLevel,
        style: const TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w900,
            fontSize: 12,
            letterSpacing: 1.2),
      ),
    );
  }
}
