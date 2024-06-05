import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/text_style.dart';

class SortWidget extends StatelessWidget {
  const SortWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                'СОРТИРОВАТЬ',
                style: AppTextStyles.greyTextProfPage,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'По алфавиту',
                style: AppTextStyles.whiteTextProfPage,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset('assets/icons/sort1.png'))),
                  IconButton(
                      onPressed: () {},
                      icon: SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset('assets/icons/sort2.png'))),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 12),
          child: Image.asset('assets/icons/Line 3 (1).png'),
        ),
      ],
    );
  }
}
