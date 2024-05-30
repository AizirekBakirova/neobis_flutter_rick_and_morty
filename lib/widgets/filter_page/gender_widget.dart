import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Checkbox(
                activeColor: const Color(0xff22A2BD),
                checkColor: Colors.black,
                value: isSelected,
                onChanged: (bool? value) {
                  setState(() {
                    isSelected = value!;
                  });
                }),
            const Text(
              'Мужской',
              style: AppTextStyles.whiteTextProfPage,
            )
          ],
        ),
        Row(
          children: [
            Checkbox(
                activeColor: const Color(0xff22A2BD),
                checkColor: Colors.black,
                value: isSelected,
                onChanged: (bool? value) {
                  setState(() {
                    isSelected = value!;
                  });
                }),
            const Text(
              'Женский',
              style: AppTextStyles.whiteTextProfPage,
            )
          ],
        ),
        Row(
          children: [
            Checkbox(
                activeColor: const Color(0xff22A2BD),
                checkColor: Colors.black,
                value: isSelected,
                onChanged: (bool? value) {
                  setState(() {
                    isSelected = value!;
                  });
                }),
            const Text(
              'Бесполый',
              style: AppTextStyles.whiteTextProfPage,
            )
          ],
        ),
      ],
    ));
  }
}
