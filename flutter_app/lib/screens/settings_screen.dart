import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/app_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/dashboard'), // Returns to Home Loop
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          _buildSectionHeader("Account & Accessibility"),
          _buildSettingTile(
            icon: Icons.language_rounded,
            title: "App Language",
            subtitle: "English (Default)",
            onTap: () {
              // Presentation Tip: Mention multi-language support (Marathi/Hindi)
              _showLanguageDialog(context);
            },
          ),
          _buildSettingTile(
            icon: Icons.notifications_active_outlined,
            title: "Emergency Alerts",
            subtitle: "Push notifications enabled",
            onTap: () {},
          ),
          const Divider(height: 32),
          _buildSectionHeader("Storage & Data"),
          _buildSettingTile(
            icon: Icons.cloud_download_outlined,
            title: "Offline Modules",
            subtitle: "Manage downloaded tutorials",
            onTap: () => context.push('/offline-management'),
          ),
          _buildSettingTile(
            icon: Icons.delete_outline_rounded,
            title: "Clear Cache",
            subtitle: "12.4 MB used",
            onTap: () {},
          ),
          const Divider(height: 32),
          _buildSectionHeader("Support"),
          _buildSettingTile(
            icon: Icons.info_outline_rounded,
            title: "About Suraksha Kavach",
            subtitle: "Version 5.0 (LOGICA Build)",
            onTap: () {},
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Developed for JSPM's RSCOE Department of Computer Engineering",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppTheme.textGrey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  // --- UI HELPER COMPONENTS ---

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: AppTheme.primaryBlue,
          letterSpacing: 1.1,
        ),
      ),
    );
  }

  Widget _buildSettingTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppTheme.primaryBlue.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: AppTheme.primaryBlue, size: 22),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle,
          style: const TextStyle(color: AppTheme.textGrey, fontSize: 13)),
      trailing: const Icon(Icons.chevron_right_rounded, color: Colors.grey),
      onTap: onTap,
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Select Language"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                title: const Text("English"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                title: const Text("मराठी (Marathi)"),
                onTap: () => Navigator.pop(context)),
            ListTile(
                title: const Text("हिन्दी (Hindi)"),
                onTap: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
