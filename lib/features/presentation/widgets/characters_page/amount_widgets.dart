import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/app_colors.dart';

class AmountWidget extends StatelessWidget {
  const AmountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Text(
        'ВСЕГО ПЕРСОНАЖЕЙ: 200',
        style: TextStyle(
            fontSize: 10,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 4
              ..color = const Color(0xff000000)),
      ),
      const Text(
        'ВСЕГО ПЕРСОНАЖЕЙ: 200',
        style: TextStyle(
          fontSize: 10,
          color: AppColors.smallTextColor,
          shadows: [
            Shadow(
                color: Color(0xff000000), blurRadius: 4, offset: Offset(0, 4))
          ],
        ),
      )
    ]);
  }
}
