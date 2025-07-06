import 'package:flutter/material.dart';

class AchievementBadges extends StatefulWidget {
  const AchievementBadges({super.key});

  @override
  State<AchievementBadges> createState() => _AchievementBadgesState();
}

class _AchievementBadgesState extends State<AchievementBadges>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<double>> _animations;

  final List<Achievement> _achievements = [
    Achievement(
      title: 'Flutter Expert',
      description: 'Mastered Flutter development',
      icon: Icons.flutter_dash,
      color: Colors.blue,
    ),
    Achievement(
      title: 'Code Quality',
      description: 'Clean code practices',
      icon: Icons.code,
      color: Colors.green,
    ),
    Achievement(
      title: 'UI/UX Design',
      description: 'Beautiful user interfaces',
      icon: Icons.design_services,
      color: Colors.purple,
    ),
    Achievement(
      title: 'Problem Solver',
      description: 'Creative solutions',
      icon: Icons.lightbulb,
      color: Colors.orange,
    ),
    Achievement(
      title: 'Team Player',
      description: 'Collaborative development',
      icon: Icons.group,
      color: Colors.teal,
    ),
    Achievement(
      title: 'Fast Learner',
      description: 'Quick adaptation',
      icon: Icons.rocket_launch,
      color: Colors.red,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _achievements.length,
      (index) => AnimationController(
        duration: Duration(milliseconds: 600 + (index * 100)),
        vsync: this,
      ),
    );

    _animations = _controllers.map((controller) {
      return Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.elasticOut,
      ));
    }).toList();

    // Stagger the animations
    for (int i = 0; i < _controllers.length; i++) {
      Future.delayed(Duration(milliseconds: i * 200), () {
        if (mounted) _controllers[i].forward();
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.emoji_events,
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                'Achievements',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 0.7,
            ),
            itemCount: _achievements.length,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _animations[index],
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animations[index].value,
                    child: _buildAchievementCard(_achievements[index]),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementCard(Achievement achievement) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: achievement.color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                achievement.icon,
                color: achievement.color,
                size: 18,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              achievement.title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              achievement.description,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 9,
                  ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class Achievement {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Achievement({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}
