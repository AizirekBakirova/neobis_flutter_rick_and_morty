import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.coverHeight,
    required this.profileHeight,
    required this.image,
    required this.backgroundImage,
  });

  final double coverHeight;
  final double profileHeight;
  final String image;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          color: AppColors.bgColor,
          margin: const EdgeInsets.only(bottom: 80),
          child: Image.asset(
            backgroundImage,
            fit: BoxFit.cover,
            width: 500,
            height: coverHeight,
          ),
        ),
        Positioned(
          top: 90,
          child: CircleAvatar(
            radius: profileHeight / 2,
            backgroundColor: AppColors.bgColor,
            backgroundImage: AssetImage(image),
          ),
        ),
      ],
    );
  }
}
