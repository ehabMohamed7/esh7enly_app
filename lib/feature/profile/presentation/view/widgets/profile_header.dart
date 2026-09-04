import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.white, width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
            image: const DecorationImage(
              image: NetworkImage(
                'https://image.tmdb.org/t/p/w500/ui8e4sgZAwMPi3hzEO53jyBJF9B.jpg ',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),

        const Text(
          'willem Dafoe',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: AppColors.textDarkBlue,
          ),
        ),
        const SizedBox(height: 6),

        const Text(
          '+20 100 123 4567',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6B7280),
          ),
        ),
      ],
    );
  }
}
