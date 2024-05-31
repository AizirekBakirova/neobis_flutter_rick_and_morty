import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class SearchEmptyPage extends StatelessWidget {
  const SearchEmptyPage({super.key});

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
            const SizedBox(
              height: 100,
            ),
            Column(
              children: [
                SizedBox(
                    width: 134,
                    height: 224,
                    child: Image.asset('assets/images/search.png')),
                SizedBox(height: 15),
                const Center(
                  child: Text(
                    'Персонаж с таким именем\n              не найден',
                    style: TextStyle(
                        color: Color(0xff5B6975),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
