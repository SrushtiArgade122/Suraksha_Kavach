import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/user_model.dart';
import '../utils/app_theme.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Corrected Mock data with actual steps for the Demo
    final List<TutorialContent> tutorials = [
      TutorialContent(
        id: '1',
        title: 'Fire Safety',
        disasterType: 'fire',
        description: 'Critical actions during a fire outbreak.',
        emoji: '🔥',
        steps: [
          'Stay low to the ground to avoid smoke inhalation.',
          'Touch doors with the back of your hand; if hot, do not open.',
          'If your clothes catch fire: Stop, Drop, and Roll.',
          'Use the nearest emergency exit; never use elevators.',
        ],
      ),
      TutorialContent(
        id: '2',
        title: 'Earthquake Prep',
        disasterType: 'earthquake',
        description: 'Drop, Cover, and Hold On protocols.',
        emoji: '🏘️',
        steps: [
          'DROP to your hands and knees.',
          'COVER your head and neck with your arms.',
          'HOLD ON to your shelter until shaking stops.',
          'Move away from windows and heavy furniture.',
        ],
      ),
      TutorialContent(
        id: '3',
        title: 'Flood Awareness',
        disasterType: 'flood',
        description: 'Navigating rising water levels safely.',
        emoji: '🌊',
        steps: [
          'Move to the highest level of the building.',
          'Do not walk or drive through flowing water.',
          'Turn off the main power switch if it is safe to do so.',
          'Listen to local emergency radio for evacuation orders.',
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: AppTheme.backgroundLight,
      appBar: AppBar(
        title: const Text('Knowledge Hub'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/dashboard'), // Home Loop
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              "Survival Guides",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textDark),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              itemCount: tutorials.length,
              itemBuilder: (context, i) =>
                  _buildTutorialTile(context, tutorials[i]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTutorialTile(BuildContext context, TutorialContent tutorial) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Text(tutorial.emoji, style: const TextStyle(fontSize: 30)),
        ),
        title: Text(
          tutorial.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            tutorial.description,
            style: const TextStyle(color: AppTheme.textGrey, fontSize: 14),
          ),
        ),
        trailing: const Icon(Icons.chevron_right_rounded,
            color: AppTheme.primaryBlue),
        // Use context.push so the back button returns to the Hub List
        onTap: () => context.push('/tutorial-detail', extra: tutorial),
      ),
    );
  }
}
