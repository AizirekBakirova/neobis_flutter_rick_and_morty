import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            'Рик Санчез',
            style: TextStyle(
                fontSize: 34,
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
    );
  }
}
