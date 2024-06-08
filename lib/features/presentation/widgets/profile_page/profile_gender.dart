import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/text_style.dart';

class ProfileGender extends StatelessWidget {
  const ProfileGender({
    super.key,
    required this.gender,
    required this.species,
  });
  final String gender;
  final String species;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Пол', style: AppTextStyles.greyTextProfPage),
              Text(
                gender,
                style: AppTextStyles.whiteTextProfPage,
              )
            ],
          ),
          const SizedBox(
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
                species,
                style: AppTextStyles.whiteTextProfPage,
              )
            ],
          )
        ],
      ),
    );
  }
}
