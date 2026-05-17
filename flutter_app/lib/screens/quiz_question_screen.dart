import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../quiz_data.dart';

class QuizQuestionScreen extends StatefulWidget {
  final String disasterType;
  final int level;

  const QuizQuestionScreen({
    super.key,
    required this.disasterType,
    required this.level,
  });

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  int? selectedOptionIndex;
  bool isAnswered = false;

  @override
  Widget build(BuildContext context) {
    final categoryData = disasterData[widget.disasterType];

    if (categoryData == null || widget.level > categoryData.length) {
      return const Scaffold(
        body: Center(child: Text("Data not found")),
      );
    }

    final levelData = categoryData[widget.level - 1];
    final questionData = levelData['questions'][0];

    return Scaffold(
      backgroundColor: const Color(0xFFF8FBFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF1A237E)),
          onPressed: () => context.pop(), // ✅ FIXED
        ),
        title: Text(
          "Level ${widget.level}",
          style: const TextStyle(
              color: Color(0xFF1A237E), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            _buildTopProgress(),
            const SizedBox(height: 30),
            _buildQuestionCard(questionData['question']),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: (questionData['options'] as List).length,
                itemBuilder: (context, index) {
                  return _buildOptionButton(
                    index,
                    questionData['options'][index],
                    questionData['answerIndex'],
                  );
                },
              ),
            ),
            if (isAnswered) _buildContinueButton(questionData['answerIndex']),
          ],
        ),
      ),
    );
  }

  Widget _buildTopProgress() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Question ${widget.level}/20",
                style: TextStyle(
                    color: Colors.blueGrey[400], fontWeight: FontWeight.bold)),
            const Icon(Icons.timer_outlined, size: 18, color: Colors.blueGrey),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: widget.level / 20,
            minHeight: 8,
            backgroundColor: const Color(0xFFE0E0E0),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF1E88E5)),
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionCard(String question) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 20,
              offset: const Offset(0, 10))
        ],
      ),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color(0xFF1A237E)),
      ),
    );
  }

  Widget _buildOptionButton(int index, String text, int correctIndex) {
    bool isSelected = selectedOptionIndex == index;
    bool isCorrect = index == correctIndex;

    Color getBorderColor() {
      if (!isAnswered) {
        return isSelected ? const Color(0xFF1E88E5) : Colors.transparent;
      }
      if (isCorrect) return Colors.green;
      if (isSelected) return Colors.red;
      return Colors.transparent;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: isAnswered
            ? null
            : () {
                setState(() {
                  selectedOptionIndex = index;
                  isAnswered = true;
                });
              },
        borderRadius: BorderRadius.circular(18),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: getBorderColor(), width: 2.5),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(text,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              if (isAnswered && isCorrect)
                const Icon(Icons.check_circle, color: Colors.green),
              if (isAnswered && isSelected && !isCorrect)
                const Icon(Icons.cancel, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContinueButton(int correctIndex) {
    bool wasRight = selectedOptionIndex == correctIndex;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: wasRight ? Colors.green : const Color(0xFF1A237E),
          minimumSize: const Size(double.infinity, 60),
        ),
        onPressed: () {
          if (wasRight) {
            // ✅ Simply go back (GoRouter style)
            context.pop();
          } else {
            setState(() {
              selectedOptionIndex = null;
              isAnswered = false;
            });
          }
        },
        child: Text(
          wasRight ? "NEXT LEVEL" : "TRY AGAIN",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
