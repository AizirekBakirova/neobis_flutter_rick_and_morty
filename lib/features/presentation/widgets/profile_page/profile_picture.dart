import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/app_colors.dart';

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
          color: AppColors.bgColor,
          margin: const EdgeInsets.only(bottom: 80),
          child: Image.network(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: coverHeight,
          ),
        ),
        Container(
          width: double.infinity,
          height: 250,
          decoration:
              BoxDecoration(color: const Color(0xff0B1e2d).withOpacity(0.65)),
        ),
        Positioned(
          top: 90,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: AppColors.bgColor,
            child: CircleAvatar(
              radius: 73,
              backgroundColor: AppColors.bgColor,
              backgroundImage: NetworkImage(image),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 200,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
