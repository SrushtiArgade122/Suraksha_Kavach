import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../generated/app_localizations.dart';
import '../services/quiz_service.dart';
import '../services/auth_service.dart'; // ✅ Added this import

class QuizScreen extends StatefulWidget {
  final String disasterType;
  final int levelNumber;

  const QuizScreen({
    super.key,
    required this.disasterType,
    required this.levelNumber,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentIndex = 0;
  int _score = 0;
  int _timeLeft = 30;
  Timer? _timer;
  bool _hasAnswered = false;
  int _selectedOption = -1;
  List<Map<String, dynamic>> _questions = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final localizedData = QuizService.getLocalizedData(context);
    final categoryData = localizedData[widget.disasterType];

    if (categoryData != null && widget.levelNumber <= categoryData.length) {
      _questions = List<Map<String, dynamic>>.from(
          categoryData[widget.levelNumber - 1]['questions']);
    } else {
      _questions = [];
    }
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timeLeft = 30;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_timeLeft > 0) {
        if (mounted) setState(() => _timeLeft--);
      } else {
        _handleTimeout();
      }
    });
  }

  void _handleTimeout() {
    if (_hasAnswered) return;
    _selectOption(-1);
  }

  void _selectOption(int index) {
    if (_hasAnswered) return;

    _timer?.cancel();
    final quizService = context.read<QuizService>();
    final authService = context.read<AuthService>(); // ✅ Access Auth

    setState(() {
      _hasAnswered = true;
      _selectedOption = index;

      final dynamic correctIndexRaw = _questions[_currentIndex]['answerIndex'];
      final int correctIndex = int.tryParse(correctIndexRaw.toString()) ?? 0;

      if (index == correctIndex) {
        _score++;

        // ✅ Points logic: tied to the registered user's ID
        final currentUser = authService.currentUser;
        if (currentUser != null) {
          quizService.addPoint(currentUser.id);
        }
      }
    });

    Future.delayed(const Duration(milliseconds: 1500), () {
      if (mounted) _nextQuestion();
    });
  }

  void _nextQuestion() {
    if (_currentIndex < _questions.length - 1) {
      setState(() {
        _currentIndex++;
        _hasAnswered = false;
        _selectedOption = -1;
      });
      _startTimer();
    } else {
      _finishQuiz();
    }
  }

  void _finishQuiz() {
    if (!mounted) return;

    final bool isPassed = (_score / _questions.length) >= 0.7;

    if (isPassed) {
      final currentUser = context.read<AuthService>().currentUser;
      if (currentUser != null) {
        // ✅ Level progress logic: tied to the registered user's ID
        context.read<QuizService>().completeLevel(
            currentUser.id, widget.disasterType, widget.levelNumber);
      }
    }

    Navigator.pop(context, isPassed);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (_questions.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final currentQuestion = _questions[_currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF1A237E)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "${l10n.testYourQuiz} - ${widget.levelNumber}",
          style: const TextStyle(
              color: Color(0xFF1A237E), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: _timeLeft / 30,
            backgroundColor: Colors.grey.shade200,
            valueColor: AlwaysStoppedAnimation<Color>(
              _timeLeft < 10 ? Colors.redAccent : Colors.blueAccent,
            ),
            minHeight: 8,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "${_currentIndex + 1} / ${_questions.length}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  _buildQuestionCard(currentQuestion['question']),
                  const SizedBox(height: 32),
                  ...List.generate(
                    currentQuestion['options'].length,
                    (i) => _buildOption(i, currentQuestion['options'][i],
                        currentQuestion['answerIndex']),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionCard(String text) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4))
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A237E)),
      ),
    );
  }

  Widget _buildOption(int index, String text, dynamic correctIndexRaw) {
    Color btnColor = Colors.white;
    Color txtColor = const Color(0xFF1A237E);

    final int correctIndex = int.tryParse(correctIndexRaw.toString()) ?? 0;

    if (_hasAnswered) {
      if (index == correctIndex) {
        btnColor = Colors.green.shade400;
        txtColor = Colors.white;
      } else if (_selectedOption == index) {
        btnColor = Colors.red.shade400;
        txtColor = Colors.white;
      }
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () => _selectOption(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: _hasAnswered &&
                        (index == correctIndex || _selectedOption == index)
                    ? Colors.transparent
                    : Colors.grey.shade200),
          ),
          child: Row(
            children: [
              Text("${String.fromCharCode(65 + index)}.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: txtColor,
                      fontSize: 18)),
              const SizedBox(width: 12),
              Expanded(
                  child: Text(text,
                      style: TextStyle(
                          color: txtColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16))),
            ],
          ),
        ),
      ),
    );
  }
}
