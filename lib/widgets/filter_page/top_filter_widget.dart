import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/characters_page.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class TopFilterWidget extends StatelessWidget {
  const TopFilterWidget({
    super.key, this.onBackTap,
  });

  final VoidCallback? onBackTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff152A3A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onBackTap,
            child: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset('assets/icons/arrowback.png'),
            ),
          ),
          const Text(
            'Фильтры',
            style: AppTextStyles.epizodeTextProfPage,
          ),
          const SizedBox(
            width: 180,
          ),
          IconButton(
              onPressed: () {},
              icon: SizedBox(
                  width: 36,
                  height: 36,
                  child: Image.asset('assets/icons/redfilter.png'))),
        ],
      ),
    );
  }
}
