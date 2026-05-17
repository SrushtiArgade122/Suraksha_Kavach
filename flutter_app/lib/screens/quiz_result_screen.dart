import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuizResultScreen extends StatefulWidget {
  final int score;
  final int total;
  final String disasterType;
  final int earnedPoints;
  final List<String> newBadges;

  const QuizResultScreen({
    super.key,
    required this.score,
    required this.total,
    required this.disasterType,
    required this.earnedPoints,
    this.newBadges = const [],
  });

  @override
  State<QuizResultScreen> createState() => _QuizResultScreenState();
}

class _QuizResultScreenState extends State<QuizResultScreen>
    with TickerProviderStateMixin {
  late AnimationController _scaleCtrl;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _scaleCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _scaleAnim = CurvedAnimation(parent: _scaleCtrl, curve: Curves.elasticOut);
    _scaleCtrl.forward();
  }

  @override
  void dispose() {
    _scaleCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double percentage = (widget.score / widget.total);
    final bool isPassed = percentage >= 0.7;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            children: [
              ScaleTransition(
                scale: _scaleAnim,
                child: _buildResultCard(percentage, isPassed),
              ),
              const SizedBox(height: 32),
              _buildPointsRow(),
              if (widget.newBadges.isNotEmpty) _buildBadgeSection(),
              const SizedBox(height: 48),
              _buildActionButtons(context, isPassed),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResultCard(double percentage, bool isPassed) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isPassed
              ? [const Color(0xFF66BB6A), const Color(0xFF43A047)]
              : [const Color(0xFFFFA726), const Color(0xFFFB8C00)],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(isPassed ? "🏆" : "📖", style: const TextStyle(fontSize: 80)),
          const SizedBox(height: 16),
          Text(
            isPassed ? "SURVIVAL EXPERT" : "KEEP LEARNING",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "You got ${widget.score} / ${widget.total}",
            style: const TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildPointsRow() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _statItem("+${widget.earnedPoints}", "Coins"),
            _statItem("${((widget.score / widget.total) * 100).round()}%",
                "Accuracy"),
          ],
        ),
      ),
    );
  }

  Widget _statItem(String val, String label) {
    return Column(
      children: [
        Text(val,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A237E))),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildBadgeSection() {
    return Column(
      children: [
        const SizedBox(height: 32),
        const Text("NEW BADGES UNLOCKED"),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          children: widget.newBadges.map((badge) {
            return Chip(label: Text(badge));
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context, bool isPassed) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // ✅ Go back to grid
            context.pop();
          },
          child: Text(isPassed ? "CONTINUE" : "RETRY"),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            // ✅ Go to home/dashboard
            context.go('/dashboard');
          },
          child: const Text("HOME"),
        ),
      ],
    );
  }
}
