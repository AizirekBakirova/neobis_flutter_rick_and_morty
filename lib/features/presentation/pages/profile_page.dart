import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/epizodes_info.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_gender.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_picture.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_info.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/profile_page/profile_name.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(
      {super.key,
      required this.image,
      required this.name,
      required this.gender,
      required this.backgroundImage});
  final String image;
  final String backgroundImage;
  final String name;
  final String gender;
  final double coverHeight = 160;

  final double profileHeight = 146;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ProfilePicture(
          //     coverHeight: coverHeight, profileHeight: profileHeight, image: '',),
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  child: Image.asset(
                    backgroundImage,
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
                    backgroundImage: AssetImage(image),
                  ),
                )
              ]),
          // const ProfileName(name: ),
          Column(
            children: [
              Center(
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: AppColors.nameColor),
                ),
              ),
              Center(
                child: Text(
                  'ЖИВОЙ',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppColors.statusColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          // const ProfileGender(gender: '',),
          Padding(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Пол', style: AppTextStyles.greyTextProfPage),
                    Text(
                      gender,
                      style: AppTextStyles.whiteTextProfPage,
                    )
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Расса',
                      style: AppTextStyles.greyTextProfPage,
                    ),
                    Text(
                      'Человек',
                      style: AppTextStyles.whiteTextProfPage,
                    )
                  ],
                )
              ],
            ),
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
