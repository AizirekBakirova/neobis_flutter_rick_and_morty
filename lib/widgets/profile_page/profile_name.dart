import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
