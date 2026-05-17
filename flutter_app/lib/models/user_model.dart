class UserModel {
  final String id;
  final String name;
  final String school;
  int totalPoints;
  int streak;
  DateTime lastLoginDate;
  List<String> badgesEarned;

  UserModel({
    required this.id,
    required this.name,
    required this.school,
    this.totalPoints = 0,
    this.streak = 0,
    required this.lastLoginDate,
    List<String>? badgesEarned,
  }) : badgesEarned = badgesEarned ?? [];

  // Logic for the Progress Bar in the Dashboard (Assuming 1000 is Max XP)
  double get preparednessScore => (totalPoints / 1000).clamp(0.0, 1.0);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'] ?? json['id'] ?? '',
      name: json['name'] ?? 'Student',
      school: json['school'] ?? 'General',
      totalPoints: json['totalPoints'] ?? 0,
      streak: json['streak'] ?? 0,
      lastLoginDate: json['lastLoginDate'] != null
          ? DateTime.parse(json['lastLoginDate'])
          : DateTime.now(),
      badgesEarned: List<String>.from(json['badgesEarned'] ?? []),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'school': school,
        'totalPoints': totalPoints,
        'streak': streak,
        'lastLoginDate':
            lastLoginDate.toIso8601String(), // ✅ Required for streak logic
        'badgesEarned': badgesEarned,
      };
}

class TutorialContent {
  final String id;
  final String title;
  final String description;
  final String disasterType;
  final String emoji;
  final List<String> steps;

  TutorialContent({
    required this.id,
    required this.title,
    required this.description,
    required this.disasterType,
    required this.emoji,
    required this.steps,
  });

  factory TutorialContent.fromJson(Map<String, dynamic> json) =>
      TutorialContent(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        disasterType: json['disasterType'] ?? 'general',
        emoji: json['emoji'] ?? '🛡️',
        steps: List<String>.from(json['steps'] ?? []),
      );
}

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) => QuizQuestion(
        question: json['question'] ?? 'No Question Found',
        options: List<String>.from(json['options'] ?? []),
        correctIndex: json['correctAnswerIndex'] ?? 0,
      );
}

class LeaderboardEntry {
  final String id;
  final String name;
  final int points;
  final int streak; // ✅ Added streak to leaderboard entries
  final bool isCurrentUser;

  LeaderboardEntry({
    required this.id,
    required this.name,
    required this.points,
    this.streak = 0,
    this.isCurrentUser = false,
  });

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json,
          {String? currentUserId}) =>
      LeaderboardEntry(
        id: json['_id']?.toString() ?? json['id']?.toString() ?? '',
        name: json['name'] ?? 'Anonymous',
        points: json['totalPoints'] ?? json['points'] ?? 0,
        streak: json['streak'] ?? 0,
        isCurrentUser: (json['_id'] ?? json['id']) == currentUserId,
      );
}
