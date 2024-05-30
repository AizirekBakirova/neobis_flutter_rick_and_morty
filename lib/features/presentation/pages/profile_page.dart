import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/epizodes_info.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_gender.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_image.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_info.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_name.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 190;
  final double profileHeight = 146;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePicture(
              coverHeight: coverHeight, profileHeight: profileHeight),
          const ProfileName(),
          const SizedBox(
            height: 15,
          ),
          const ProfileGender(),
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
