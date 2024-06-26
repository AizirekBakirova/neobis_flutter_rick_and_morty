import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/widgets/profile_page/epizodes_info.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/widgets/profile_page/profile_gender.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/widgets/profile_page/profile_picture.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/widgets/profile_page/profile_info.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/widgets/profile_page/profile_name.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(
      {super.key,
      required this.image,
      required this.name,
      required this.gender,
      required this.description,
      required this.species});
  final String image;
  final String name;
  final String gender;
  final String description;
  final String species;

  final double coverHeight = 170;
  final double profileHeight = 146;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePicture(
            coverHeight: coverHeight,
            profileHeight: profileHeight,
            image: image,
          ),
          ProfileName(
            name: name,
            description: description,
          ),
          const SizedBox(
            height: 15,
          ),
          ProfileGender(
            gender: gender,
            species: species,
          ),
          const SizedBox(
            height: 10,
          ),
          const ProfileInfo(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 0,
          ),
          const SizedBox(
            height: 10,
          ),
          const EpizodesInfo()
        ],
      ),
    );
  }
}
