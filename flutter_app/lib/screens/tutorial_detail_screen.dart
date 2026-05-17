import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/user_model.dart';
import '../utils/app_theme.dart';

class TutorialDetailScreen extends StatelessWidget {
  final TutorialContent tutorial;

  const TutorialDetailScreen({super.key, required this.tutorial});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundLight,
      appBar: AppBar(
        title: Text(tutorial.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/dashboard'), // Returns to Home Loop
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderSection(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Emergency Protocol",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textDark),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Follow these steps carefully to ensure safety.",
                    style: TextStyle(color: AppTheme.textGrey, fontSize: 14),
                  ),
                  const SizedBox(height: 24),

                  // Dynamically build the list of steps from your Model
                  ...List.generate(
                    tutorial.steps.length,
                    (index) => _buildStepCard(index + 1, tutorial.steps[index]),
                  ),

                  const SizedBox(height: 32),
                  _buildActionButtons(context),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- UI COMPONENTS ---

  Widget _buildHeaderSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Text(tutorial.emoji, style: const TextStyle(fontSize: 60)),
          const SizedBox(height: 16),
          Text(
            tutorial.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16, height: 1.5, color: AppTheme.textDark),
          ),
        ],
      ),
    );
  }

  Widget _buildStepCard(int stepNumber, String content) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10,
              offset: const Offset(0, 4)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: AppTheme.primaryBlue,
              shape: BoxShape.circle,
            ),
            child: Text(
              "$stepNumber",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              content,
              style: const TextStyle(
                  fontSize: 15, height: 1.4, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            // Navigate to the quiz for this specific disaster type
            context.push('/quiz?disaster=${tutorial.disasterType}');
          },
          icon: const Icon(Icons.quiz_outlined),
          label: const Text("TAKE SURVIVAL QUIZ"),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 54),
            backgroundColor: AppTheme.primaryBlue,
          ),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () => context.go('/dashboard'),
          child: const Text(
            "MARK AS COMPLETE",
            style: TextStyle(
                color: AppTheme.safeGreen, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
