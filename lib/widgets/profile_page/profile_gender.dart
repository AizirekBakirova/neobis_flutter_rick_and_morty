import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class ProfileGender extends StatelessWidget {
  const ProfileGender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15, left: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Пол', style: AppTextStyles.greyTextProfPage),
              Text(
                'Мужской',
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
    );
  }
}
