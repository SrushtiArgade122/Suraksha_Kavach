import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:go_router/go_router.dart';
import '../utils/app_theme.dart';
import '../utils/constants.dart';

class SOSScreen extends StatefulWidget {
  const SOSScreen({super.key});

  @override
  State<SOSScreen> createState() => _SOSScreenState();
}

class _SOSScreenState extends State<SOSScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulseCtrl;

  @override
  void initState() {
    super.initState();
    _pulseCtrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  Future<void> _makeCall(String number) async {
    final Uri url = Uri.parse('tel:$number');
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Unable to place call to $number")),
        );
      }
    }
  }

  @override
  void dispose() {
    _pulseCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0000), // Deep emergency black-red
      appBar: AppBar(
        title: const Text("EMERGENCY HELP"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close_rounded, color: Colors.white),
          onPressed: () => context.go('/dashboard'), // Return to Home Loop
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              "HOLD BUTTON TO CALL",
              style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 60),

            // Pulsing SOS Button
            Center(
              child: ScaleTransition(
                scale: Tween(begin: 1.0, end: 1.15).animate(
                  CurvedAnimation(parent: _pulseCtrl, curve: Curves.easeInOut),
                ),
                child: GestureDetector(
                  onLongPress: () => _makeCall(AppConstants.emergencyNumber),
                  child: Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      color: AppTheme.dangerRed,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.dangerRed.withValues(alpha: 0.5),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.emergency_rounded,
                            color: Colors.white, size: 50),
                        SizedBox(height: 10),
                        Text(
                          "SOS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("112",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 80),
            _buildEmergencyList(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildEmergencyList() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "QUICK HELPLINES",
            style: TextStyle(
                color: Colors.white38,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
          const SizedBox(height: 16),
          _emergencyTile("Disaster Helpline", AppConstants.ndmaHelpline,
              AppTheme.warningAmber, Icons.security),
          _emergencyTile("Police Station", "100", AppTheme.primaryBlue,
              Icons.local_police),
          _emergencyTile("Ambulance / Medical", "108", AppTheme.safeGreen,
              Icons.medical_services),
          _emergencyTile(
              "Fire Brigade", "101", AppTheme.dangerRed, Icons.fire_truck),
        ],
      ),
    );
  }

  Widget _emergencyTile(String label, String num, Color col, IconData icon) {
    return Card(
      color: Colors.white.withValues(alpha: 0.05),
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icon, color: col),
        title: Text(label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500)),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
              color: col.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            num,
            style: TextStyle(
                color: col, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        onTap: () => _makeCall(num),
      ),
    );
  }
}
