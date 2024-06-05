import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/text_style.dart';

class EpizodesInfo extends StatelessWidget {
  const EpizodesInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Эпизоды',
              style: AppTextStyles.epizodeTextProfPage,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Серия 1',
              style: AppTextStyles.blueTextProfPage,
            ),
            Text(
              'Пилот',
              style: AppTextStyles.whiteMiddleTextProfPage,
            ),
            Text(
              '2 декабря 2013',
              style: AppTextStyles.greyTextProfPage,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Серия 2',
              style: AppTextStyles.blueTextProfPage,
            ),
            Text(
              'Пёс-газонокосильщик',
              style: AppTextStyles.whiteMiddleTextProfPage,
            ),
            Text(
              '9 декабря 2013',
              style: AppTextStyles.greyTextProfPage,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Серия 3',
              style: AppTextStyles.blueTextProfPage,
            ),
            Text(
              'Анатомический парк',
              style: AppTextStyles.whiteMiddleTextProfPage,
            ),
            Text(
              '16 декабря 2013',
              style: AppTextStyles.greyTextProfPage,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Серия 4',
              style: AppTextStyles.blueTextProfPage,
            ),
            Text(
              'М. Найт Шьямал-Иноплане...',
              style: AppTextStyles.whiteMiddleTextProfPage,
            ),
            Text(
              '13 января 2013',
              style: AppTextStyles.greyTextProfPage,
            ),
          ],
        ),
      ),
    );
  }
}
