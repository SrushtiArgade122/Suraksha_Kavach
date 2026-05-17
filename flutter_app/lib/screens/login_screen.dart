import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';
import '../services/quiz_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  bool _isLoginMode = true; // 🔥 toggle login/register
  bool _isLoading = false;
  String? _error;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _error = null;
    });

    final auth = context.read<AuthService>();

    final result = await auth.login(
      email: _emailCtrl.text.trim(),
      password: _passCtrl.text,
      name: _isLoginMode ? null : _nameCtrl.text.trim(),
    );

    if (!mounted) return;

    setState(() => _isLoading = false);

    if (result['success']) {
      // ✅ ADD THIS LINE to define 'quiz'
      final quiz = context.read<QuizService>();

      final userId = auth.currentUser?.id ?? "guest";

      // Now 'quiz' is defined, so this line will work perfectly!
      await quiz.loadProgress(userId);

      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Icon(Icons.shield, size: 70, color: Colors.blue),
                const SizedBox(height: 10),
                Text(
                  _isLoginMode ? "Login" : "Create Account",
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                if (!_isLoginMode)
                  _buildField(
                    controller: _nameCtrl,
                    hint: "Full Name",
                    icon: Icons.person,
                    validator: (v) => v!.isEmpty ? "Enter name" : null,
                  ),
                _buildField(
                  controller: _emailCtrl,
                  hint: "Email",
                  icon: Icons.email,
                  validator: (v) {
                    if (v!.isEmpty) return "Enter email";
                    if (!v.endsWith("@gmail.com")) {
                      return "Use @gmail.com";
                    }
                    return null;
                  },
                ),
                _buildField(
                  controller: _passCtrl,
                  hint: "Password",
                  icon: Icons.lock,
                  obscure: true,
                  validator: (v) => v!.length < 6 ? "Min 6 characters" : null,
                ),
                if (_error != null)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(_error!,
                        style: const TextStyle(color: Colors.red)),
                  ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isLoading ? null : _submit,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : Text(_isLoginMode ? "Login" : "Register"),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isLoginMode = !_isLoginMode;
                      _error = null;
                    });
                  },
                  child: Text(
                    _isLoginMode
                        ? "New user? Create account"
                        : "Already have account? Login",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    String? Function(String?)? validator,
    bool obscure = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
