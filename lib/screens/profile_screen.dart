// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/testimonials_section.dart';
import '../widgets/contact_form.dart';
import '../widgets/projects_gallery.dart';
import '../widgets/achievement_badges.dart';

class ProfileScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const ProfileScreen({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    ));

    // Start fade animation
    _fadeController.forward();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: widget.toggleTheme,
            icon: Icon(
              widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const ProfileHeader(),
              const SizedBox(height: 20),
              const AboutSection(),
              const SizedBox(height: 20),
              const SkillsSection(),
              const SizedBox(height: 20),
              const AchievementBadges(),
              const SizedBox(height: 20),
              const TestimonialsSection(),
              const SizedBox(height: 20),
              const ProjectsGallery(),
              const SizedBox(height: 20),
              const ContactSection(),
              const SizedBox(height: 20),
              const ContactForm(),
              const SizedBox(height: 20),
              const ProjectsSection(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
