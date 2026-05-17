import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import '../generated/app_localizations.dart';
import '../services/auth_service.dart';
import '../services/language_service.dart';
import '../services/quiz_service.dart';
import '../models/user_model.dart';
import '../utils/app_theme.dart';
import 'disaster_selection_screen.dart';
import 'shake_and_survive_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthService>().handleStreakLogic();
    });
  }

  void _openStreakModal(BuildContext context, int currentStreak) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) => const SizedBox.shrink(),
      transitionBuilder: (context, anim1, anim2, child) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: ScaleTransition(
            scale: anim1,
            child: StreakModal(streak: currentStreak),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthService>();
    final quiz = context.watch<QuizService>();
    final user = auth.currentUser;
    final l10n = AppLocalizations.of(context)!;

    final int badgeCount = [
      quiz.getUnlockedLevel("Fire") > 10,
      quiz.getUnlockedLevel("Flood") > 10,
      quiz.getUnlockedLevel("Earthquake") > 10,
      quiz.totalSolvedQuestions >= 10,
      quiz.totalSolvedQuestions >= 150,
    ].where((unlocked) => unlocked).length;

    double readinessProgress =
        (quiz.totalSolvedQuestions / quiz.maxQuestions).clamp(0.0, 1.0);

    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            floating: true,
            pinned: true,
            elevation: 0,
            backgroundColor: const Color(0xFFF1F5F9),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              title: Text(l10n.appTitle,
                  style: const TextStyle(
                      color: Color(0xFF1E293B),
                      fontWeight: FontWeight.w900,
                      fontSize: 22)),
            ),
            actions: [
              IconButton(
                  icon: const Icon(Icons.leaderboard_rounded,
                      color: Color(0xFF64748B)),
                  onPressed: () => context.push('/leaderboard')),
              IconButton(
                  icon: const Icon(Icons.logout_rounded,
                      color: Color(0xFF94A3B8)),
                  onPressed: () => _showLogoutDialog(context, auth, l10n)),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, user),
                _buildStatsCard(context, quiz.totalSolvedQuestions,
                    user?.streak ?? 0, badgeCount, l10n),
                _buildPreparednessScore(context, readinessProgress, l10n),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 20, 24, 15),
                  child: Row(
                    children: [
                      Container(
                          width: 4, height: 20, color: const Color(0xFF2C7A7B)),
                      const SizedBox(width: 10),
                      Text(l10n.learningModules,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF334155))),
                    ],
                  ),
                ),
                _buildDisasterGrid(context, l10n),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppTheme.dangerRed,
        elevation: 6,
        onPressed: () => context.push('/sos'),
        icon: const Icon(Icons.emergency_share, color: Colors.white),
        label: Text(l10n.emergencySos,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5)),
      ),
    );
  }

  Widget _buildDisasterGrid(BuildContext context, AppLocalizations l10n) {
    return GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 1.1,
        children: [
          _moduleCard(context, l10n.fireSafety, "🔥", const Color(0xFFFF4D4D),
              () => _navToDisaster(context, "Fire", Colors.red)),
          _moduleCard(context, l10n.earthquake, "🏘️", const Color(0xFFFFB703),
              () => _navToDisaster(context, "Earthquake", Colors.orange)),
          _moduleCard(context, l10n.floodAlert, "🌊", const Color(0xFF3B82F6),
              () => _navToDisaster(context, "Flood", Colors.blue)),
          _moduleCard(context, "Game", "🎮", const Color(0xFF06B6D4), () {
            // ✅ Changed label to "Game"
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ShakeAndSurviveApp()),
            );
          }),
        ]);
  }

  void _navToDisaster(BuildContext context, String title, Color color) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DisasterSelectionScreen(title: title, themeColor: color)));
  }

  Widget _buildHeader(BuildContext context, UserModel? user) {
    final langService = context.read<LanguageService>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.push('/profile'),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 24,
                    backgroundColor: const Color(0xFFCBD5E1),
                    child: Text(
                        user?.name.isNotEmpty == true
                            ? user!.name[0].toUpperCase()
                            : "S",
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.white))),
                const SizedBox(width: 12),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Hello,",
                      style: TextStyle(color: Colors.grey[600], fontSize: 13)),
                  Text(user?.name ?? 'Student',
                      style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF1E293B))),
                ]),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(children: [
              _langBtn(context, langService, 'EN', 'en'),
              _langBtn(context, langService, 'HI', 'hi'),
              _langBtn(context, langService, 'MR', 'mr')
            ]),
          )
        ],
      ),
    );
  }

  Widget _langBtn(BuildContext context, LanguageService service, String label,
      String code) {
    bool isSelected = service.currentLocale.languageCode == code;
    return GestureDetector(
      onTap: () => service.changeLanguage(code),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF475569) : Colors.transparent,
            borderRadius: BorderRadius.circular(8)),
        child: Text(label,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.grey[500])),
      ),
    );
  }

  Widget _buildStatsCard(BuildContext context, int points, int streak,
      int badges, AppLocalizations l10n) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withValues(alpha: 0.02),
                blurRadius: 20,
                offset: const Offset(0, 8))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _statItem(Icons.stars_rounded, "$points", l10n.points,
              const Color(0xFFFFB703)),
          GestureDetector(
            onTap: () => _openStreakModal(context, streak),
            child: _statItem(
                Icons.local_fire_department_rounded,
                "$streak",
                l10n.streak,
                streak > 0 ? const Color(0xFFFF4D4D) : const Color(0xFF94A3B8),
                hasGlow: streak > 0),
          ),
          _statItem(Icons.verified_rounded, "$badges", l10n.badges,
              const Color(0xFF3B82F6)),
        ],
      ),
    );
  }

  Widget _statItem(IconData icon, String val, String label, Color color,
      {bool hasGlow = false}) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            shape: BoxShape.circle,
            boxShadow: hasGlow
                ? [
                    BoxShadow(
                        color: color.withValues(alpha: 0.4),
                        blurRadius: 15,
                        spreadRadius: 2)
                  ]
                : []),
        child: Icon(icon, color: color, size: 26),
      ),
      const SizedBox(height: 10),
      Text(val,
          style: const TextStyle(
              color: Color(0xFF1E293B),
              fontWeight: FontWeight.w900,
              fontSize: 18)),
      Text(label,
          style: TextStyle(
              color: Colors.grey[500],
              fontSize: 11,
              fontWeight: FontWeight.w600)),
    ]);
  }

  Widget _buildPreparednessScore(
      BuildContext context, double score, AppLocalizations l10n) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFFE6FFFA),
              const Color(0xFFB2F5EA).withValues(alpha: 0.5)
            ]),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xFF81E6D9), width: 1.5),
        boxShadow: [
          BoxShadow(
              color: const Color(0xFF319795).withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, 10))
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFF2C7A7B),
                    borderRadius: BorderRadius.circular(14)),
                child: const Icon(Icons.shield_rounded,
                    color: Colors.white, size: 20)),
            const SizedBox(width: 15),
            const Text("Safety Status",
                style: TextStyle(
                    color: Color(0xFF1A202C),
                    fontWeight: FontWeight.w900,
                    fontSize: 18)),
          ]),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: const Color(0xFF2C7A7B),
                  borderRadius: BorderRadius.circular(20)),
              child: const Text("LIVE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w900))),
        ]),
        const SizedBox(height: 25),
        Stack(children: [
          Container(
              height: 14,
              decoration: BoxDecoration(
                  color: const Color(0xFFE2E8F0),
                  borderRadius: BorderRadius.circular(10))),
          AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              width: (MediaQuery.of(context).size.width - 96) * score,
              height: 14,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF38B2AC), Color(0xFF2C7A7B)]),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xFF38B2AC).withValues(alpha: 0.4),
                        blurRadius: 10,
                        offset: const Offset(0, 4))
                  ])),
        ]),
        const SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("${(score * 100).toInt()}% ${l10n.preparedStatus}",
              style: const TextStyle(
                  color: Color(0xFF4A5568),
                  fontWeight: FontWeight.w800,
                  fontSize: 14)),
          const Icon(Icons.arrow_forward_ios_rounded,
              color: Color(0xFF2C7A7B), size: 14),
        ]),
      ]),
    );
  }

  Widget _moduleCard(BuildContext context, String title, String icon,
      Color color, VoidCallback onTap) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withValues(alpha: 0.02),
                      blurRadius: 10,
                      offset: const Offset(0, 4))
                ]),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.1),
                      shape: BoxShape.circle),
                  child: Text(icon, style: const TextStyle(fontSize: 28))),
              const SizedBox(height: 12),
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF475569),
                      fontSize: 14))
            ])));
  }

  void _showLogoutDialog(
      BuildContext context, AuthService auth, AppLocalizations l10n) {
    showDialog(
        context: context,
        builder: (dialogContext) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                title: Text(l10n.logout,
                    style: const TextStyle(fontWeight: FontWeight.w900)),
                content: Text(l10n.logoutConfirm),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(dialogContext),
                      child: Text(l10n.cancel)),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(dialogContext);
                        auth.logout();
                      },
                      child: Text(l10n.logout,
                          style: const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)))
                ]));
  }
}

// ... Keep StreakModal class same as before ...
class StreakModal extends StatelessWidget {
  final int streak;
  const StreakModal({super.key, required this.streak});

  @override
  Widget build(BuildContext context) {
    double progress = (streak / 5).clamp(0.0, 1.0);
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
                opacity: streak > 0 ? 1.0 : 0.2,
                child: const Text("🔥",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50))),
            const SizedBox(height: 15),
            Text("$streak Days",
                style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1E293B))),
            const SizedBox(height: 10),
            Container(
                width: 120,
                height: 6,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: progress,
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Colors.orange, Colors.redAccent]),
                            borderRadius: BorderRadius.circular(10))))),
            const SizedBox(height: 20),
            const Text(
                "Keep the fire burning!\nLog in daily to build your streak.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF64748B), fontSize: 14)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E293B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Text("Keep Going!",
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
