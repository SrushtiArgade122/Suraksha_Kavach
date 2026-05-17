import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/quiz_service.dart';
import '../services/auth_service.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    final quizService = context.watch<QuizService>();
    final authService = context.watch<AuthService>();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF8FAFC), Color(0xFFE2E8F0)],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              _buildAppBar(context),
              Expanded(
                child: FutureBuilder<List<Map<String, dynamic>>>(
                  future: quizService.getAllRegisteredUsers(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(
                          child: Text("No heroes registered yet."));
                    }

                    final users = snapshot.data!;
                    users.sort((a, b) => b['points'].compareTo(a['points']));

                    return Column(
                      children: [
                        const SizedBox(height: 20),
                        _buildPodium(users),
                        const SizedBox(height: 30),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                            child: _buildList(users, authService),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Color(0xFF1A237E)),
            onPressed: () => Navigator.pop(context),
          ),
          const Text(
            "Hall of Heroes",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color(0xFF1A237E)),
          ),
        ],
      ),
    );
  }

  Widget _buildPodium(List<Map<String, dynamic>> users) {
    if (users.isEmpty) return const SizedBox();
    var displayTop = users.take(3).toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (displayTop.length >= 2)
            _podiumItem(displayTop[1], "🥈", 80, const Color(0xFF94A3B8))
          else
            const SizedBox(width: 80),
          const SizedBox(width: 15),
          _podiumItem(displayTop[0], "👑", 110, const Color(0xFFF59E0B),
              isWinner: true),
          const SizedBox(width: 15),
          if (displayTop.length >= 3)
            _podiumItem(displayTop[2], "🥉", 80, const Color(0xFFD97706))
          else
            const SizedBox(width: 80),
        ],
      ),
    );
  }

  Widget _podiumItem(Map<String, dynamic> user, String medal, double avatarSize,
      Color accentColor,
      {bool isWinner = false}) {
    return Column(
      children: [
        if (isWinner)
          const Icon(Icons.star_rounded, color: Color(0xFFF59E0B), size: 30),
        const SizedBox(height: 4),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: avatarSize,
              height: avatarSize,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: accentColor, width: 3),
                boxShadow: [
                  BoxShadow(
                      color: accentColor.withValues(alpha: 0.3),
                      blurRadius: 20,
                      spreadRadius: 2)
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(user['name'][0].toUpperCase(),
                    style: TextStyle(
                        fontSize: avatarSize * 0.4,
                        fontWeight: FontWeight.w900,
                        color: accentColor)),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                  color: accentColor, borderRadius: BorderRadius.circular(10)),
              child: Text(medal, style: const TextStyle(fontSize: 12)),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(user['name'].split(' ')[0],
            style: const TextStyle(
                color: Color(0xFF1A237E),
                fontWeight: FontWeight.w800,
                fontSize: 14)),
        Text("${user['points']} pts",
            style: TextStyle(
                color: accentColor, fontWeight: FontWeight.w700, fontSize: 13)),
      ],
    );
  }

  Widget _buildList(List<Map<String, dynamic>> users, AuthService authService) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        final bool isMe = user['name'] == authService.currentUser?.name;
        final int userStreak = user['streak'] ?? 0;

        return Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: isMe ? const Color(0xFFF0F7FF) : Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: isMe ? const Color(0xFF3B82F6) : const Color(0xFFE2E8F0),
              width: isMe ? 2 : 1,
            ),
            boxShadow: [
              if (!isMe)
                BoxShadow(
                    color: Colors.black.withValues(alpha: 0.03),
                    blurRadius: 10,
                    offset: const Offset(0, 4))
            ],
          ),
          child: Row(
            children: [
              SizedBox(
                width: 35,
                child: Text(
                  "#${index + 1}",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: index < 3
                        ? const Color(0xFFF59E0B)
                        : const Color(0xFF64748B),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 22,
                backgroundColor: index < 3
                    ? const Color(0xFFF0F9FF)
                    : const Color(0xFFF1F5F9),
                child: Text(
                  user['name'][0].toUpperCase(),
                  style: TextStyle(
                    color: index < 3
                        ? const Color(0xFF3B82F6)
                        : const Color(0xFF475569),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          user['name'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Color(0xFF1E293B)),
                        ),
                        // ✅ Fixed Colors.orangeRed to Colors.deepOrange
                        if (userStreak > 0) ...[
                          const SizedBox(width: 6),
                          const Icon(Icons.local_fire_department_rounded,
                              color: Colors.deepOrange, size: 18),
                          Text("$userStreak",
                              style: const TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                        ]
                      ],
                    ),
                    Text(
                      _getRankName(user['points']),
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blueAccent.withValues(alpha: 0.8),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${user['points']}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: Color(0xFF1A237E)),
                  ),
                  const Text("XP",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  String _getRankName(int points) {
    if (points >= 200) return "Master Protector";
    if (points >= 100) return "Senior Rescuer";
    return "Safety Trainee";
  }
}
