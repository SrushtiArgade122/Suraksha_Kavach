class AppConstants {
  static const String appName = 'Suraksha Kavach';
  static const String appTagline = 'Be Prepared. Stay Safe.';

  // 1. API Configuration
  // CRITICAL: 10.0.2.2 is for Android Emulator.
  // If using a physical phone, change this to your Laptop's IP (e.g., 192.168.1.5)
  static const String baseUrl = 'http://10.0.2.2:3000/api';

  // Navigation Routes (to ensure "Home to All" consistency)
  static const String rootRoute = '/';
  static const String loginRoute = '/login';
  static const String homeRoute = '/dashboard';
  static const String quizRoute = '/quiz';
  static const String sosRoute = '/sos';
  static const String tutorialRoute = '/tutorial-detail';

  // Auth Endpoints
  static const String loginEndpoint = '/auth/login';
  static const String registerEndpoint = '/auth/register';
  static const String profileEndpoint = '/auth/profile';

  // Knowledge Hub & Gamification Endpoints
  static const String questionsEndpoint = '/quiz/questions';
  static const String submitScoreEndpoint = '/quiz/submit';
  static const String leaderboardEndpoint = '/leaderboard';

  // 2. SOS & Emergency
  static const String emergencyNumber = '112';
  static const String ndmaHelpline = '1078';

  // 3. Storage Keys (SharedPreferences)
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String offlineQuestionsKey = 'offline_questions';
  static const String offlineTutorialsKey = 'offline_tutorials';
  static const String totalPointsKey = 'total_points';
  static const String badgesKey = 'earned_badges';
  static const String streakKey = 'daily_streak';

  // 4. Disaster Module Categories
  static const List<String> disasterTypes = [
    'earthquake',
    'flood',
    'fire',
    'cyclone',
    'tsunami',
  ];

  // 5. Gamification Definitions
  static const Map<String, Map<String, dynamic>> badges = {
    'first_quiz': {
      'name': 'Quiz Starter',
      'icon': '📝',
      'description': 'Completed your first disaster module',
      'points': 50,
    },
    'perfect_score': {
      'name': 'Survival Expert',
      'icon': '🏆',
      'description': 'Got 100% in a disaster quiz',
      'points': 100,
    },
    'fire_expert': {
      'name': 'Fire Marshal',
      'icon': '🔥',
      'description': 'Completed all fire safety tutorials',
      'points': 75,
    },
    'flood_master': {
      'name': 'Flood Guardian',
      'icon': '🌊',
      'description': 'Survived the flood simulation',
      'points': 75,
    },
    'earthquake_pro': {
      'name': 'Tectonic Hero',
      'icon': '🏘️',
      'description': 'Mastered the earthquake drill',
      'points': 75,
    },
    'week_streak': {
      'name': 'Consistency King',
      'icon': '⚡',
      'description': '7-Day learning streak',
      'points': 150,
    },
  };
}
