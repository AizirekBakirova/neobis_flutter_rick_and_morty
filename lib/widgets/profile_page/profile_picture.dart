import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.coverHeight,
    required this.profileHeight,
    required this.image,
  });

  final double coverHeight;
  final double profileHeight;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 80),
            child: Image.asset(
              'assets/images/rick.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: coverHeight,
            ),
          ),
          Positioned(
            top: 90,
            child: CircleAvatar(
              radius: profileHeight / 2,
              backgroundColor: AppColors.bgColor,
              backgroundImage: const AssetImage('assets/images/1.png'),
            ),
          )
        ]);
  }
}
