import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class TopFilterWidget extends StatelessWidget {
  const TopFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff152A3A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset('assets/icons/arrowback.png'))),
          const Text(
            'Фильтры',
            style: AppTextStyles.epizodeTextProfPage,
          ),
          const SizedBox(
            width: 200,
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
