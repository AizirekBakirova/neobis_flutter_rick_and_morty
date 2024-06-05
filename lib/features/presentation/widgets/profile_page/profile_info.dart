import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/text_style.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Место рождения',
            style: AppTextStyles.greyTextProfPage,
          ),
          Text(
            'Земля С-137',
            style: AppTextStyles.whiteTextProfPage,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Местоположение',
            style: AppTextStyles.greyTextProfPage,
          ),
          Text(
            'Земля (Измерение подменны)',
            style: AppTextStyles.whiteTextProfPage,
          )
        ],
      ),
    );
  }
}
