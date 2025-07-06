import 'package:flutter/material.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

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
                Icons.star,
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                'What People Say',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildTestimonialCard(
                  context,
                  'Kofi Koranteng',
                  'Product Manager',
                  'Ezekiel delivered an exceptional Flutter app that exceeded our expectations. His attention to detail and clean code made the development process smooth.',
                  5,
                ),
                const SizedBox(width: 16),
                _buildTestimonialCard(
                  context,
                  'Kwame Asante',
                  'Startup Founder',
                  'Working with Ezekiel was a game-changer for our startup. He built a robust, scalable app that helped us launch successfully.',
                  5,
                ),
                const SizedBox(width: 16),
                _buildTestimonialCard(
                  context,
                  'Yaw Baafi',
                  'UX Designer',
                  'Ezekiel\'s technical expertise combined with his understanding of user experience made our collaboration incredibly productive.',
                  4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTestimonialCard(
    BuildContext context,
    String name,
    String position,
    String testimonial,
    int rating,
  ) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(20),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ...List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        size: 16,
                        color: index < rating
                            ? Colors.amber
                            : Colors.grey.withOpacity(0.3),
                      )),
              const Spacer(),
              Icon(
                Icons.format_quote,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            testimonial,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                position,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
