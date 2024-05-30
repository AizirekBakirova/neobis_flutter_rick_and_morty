import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/icons/arrowback.png'))),
                const Text(
                  'Рик',
                  style: AppTextStyles.epizodeTextProfPage,
                ),
                const SizedBox(
                  width: 200,
                ),
                IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/icons/delete.png'))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 12, right: 15, bottom: 12),
              child: Image.asset('assets/icons/Line 3 (1).png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Text(
                'РЕЗУЛЬТАТЫ ПОИСКА',
                style: AppTextStyles.greyTextProfPage,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 15, top: 12, left: 15, bottom: 12),
              child: Container(
                width: 343,
                height: 74,
                child: Row(
                  children: [
                    Container(
                      width: 74,
                      height: 74,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/1.png'))),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ЖИВОЙ',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: AppColors.statusColor),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Рик Санчез',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.nameColor),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Человек, Мужской',
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.genderColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
