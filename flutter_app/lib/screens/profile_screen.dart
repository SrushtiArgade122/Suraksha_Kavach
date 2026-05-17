import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import '../services/auth_service.dart';
import '../services/quiz_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final authService = context.watch<AuthService>();
    final quizService = context.watch<QuizService>();

    final String name = authService.currentUser?.name ?? "Student";
    final int totalPts = quizService.totalSolvedQuestions;

    // ✅ Sync Logic: These determine if a badge is "Earned"
    bool fireMaster = quizService.getUnlockedLevel("Fire") > 10;
    bool floodMaster = quizService.getUnlockedLevel("Flood") > 10;
    bool earthMaster = quizService.getUnlockedLevel("Earthquake") > 10;
    bool isProtector = totalPts >= 10;
    bool isElite = totalPts >= 150;

    // ✅ Total count of earned badges
    int earnedCount = [
      fireMaster,
      floodMaster,
      earthMaster,
      isProtector,
      isElite
    ].where((unlocked) => unlocked).length;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(name, totalPts),

            // ✅ Updated Header with dynamic earnedCount
            _buildSectionHeader("Achievements", "$earnedCount Earned"),

            _buildStaticBadgeGrid(totalPts, fireMaster, floodMaster,
                earthMaster, isProtector, isElite),

            const SizedBox(height: 50),
            _buildSignOutButton(context, authService, quizService),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(String name, int points) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 80, bottom: 40),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF4361EE), Color(0xFF3A0CA3)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                      color: Colors.white.withValues(alpha: 0.4), width: 2),
                ),
                child: Center(
                  child: Text(name.isNotEmpty ? name[0].toUpperCase() : "S",
                      style: const TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(name,
              style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Colors.white)),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1), blurRadius: 20)
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.stars_rounded,
                    color: Color(0xFF4361EE), size: 18),
                const SizedBox(width: 8),
                Text("$points Points",
                    style: const TextStyle(
                        color: Color(0xFF4361EE), fontWeight: FontWeight.w800)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, String chip) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 40, 24, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title.toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  letterSpacing: 1.5,
                  color: Color(0xFF0F172A))),
          if (chip.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F3FF),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(chip,
                  style: const TextStyle(
                      color: Color(0xFF4361EE),
                      fontWeight: FontWeight.w800,
                      fontSize: 12)),
            ),
        ],
      ),
    );
  }

  Widget _buildStaticBadgeGrid(int totalPts, bool fire, bool flood, bool earth,
      bool protector, bool elite) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: _badgeItem("🔥", "Fire Master", fire)),
              Expanded(child: _badgeItem("🌊", "Flood Expert", flood)),
              Expanded(child: _badgeItem("⛰️", "Earth Hero", earth)),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: _badgeItem("🛡️", "Protector", protector)),
              Expanded(child: _badgeItem("🏆", "Elite", elite, isGold: true)),
              const Expanded(child: SizedBox()), // Maintain 3-column grid
            ],
          ),
        ],
      ),
    );
  }

  Widget _badgeItem(String icon, String label, bool unlocked,
      {bool isGold = false}) {
    return Column(
      children: [
        Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
            color: unlocked ? Colors.white : const Color(0xFFFAFAFA),
            shape: BoxShape.circle,
            border: Border.all(
                color: unlocked
                    ? (isGold
                        ? const Color(0xFFFFB703)
                        : const Color(0xFFE2E8F0))
                    : const Color(0xFFF1F5F9),
                width: unlocked ? 3 : 1),
            boxShadow: unlocked
                ? [
                    BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 20,
                        offset: const Offset(0, 10))
                  ]
                : [],
          ),
          child: Opacity(
            opacity: unlocked ? 1.0 : 0.3,
            child:
                Center(child: Text(icon, style: const TextStyle(fontSize: 32))),
          ),
        ),
        const SizedBox(height: 12),
        Text(label,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Color(0xFF64748B))),
      ],
    );
  }

  Widget _buildSignOutButton(
      BuildContext context, AuthService auth, QuizService quiz) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: OutlinedButton(
        onPressed: () async {
          // Clear points and progress before logging out
          quiz.resetLocalState();
          await auth.logout();
          if (mounted) context.go('/login');
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFFFEE2E2), width: 2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          minimumSize: const Size(double.infinity, 0),
        ),
        child: const Text("Sign Out",
            style: TextStyle(
                color: Color(0xFFFF4D4D),
                fontWeight: FontWeight.w800,
                fontSize: 16)),
      ),
    );
  }
}
