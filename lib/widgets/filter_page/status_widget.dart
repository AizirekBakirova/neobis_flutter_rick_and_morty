import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 12, bottom: 12),
            child: Text(
              'СТАТУС',
              style: AppTextStyles.greyTextProfPage,
            ),
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
                'Живой',
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
                'Неизвестно',
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
                'Мёртвый',
                style: AppTextStyles.whiteTextProfPage,
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 12),
            child: Image.asset('assets/icons/Line 3 (1).png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 12, top: 12),
            child: Text(
              'ПОЛ',
              style: AppTextStyles.greyTextProfPage,
            ),
          ),
        ],
      ),
    );
  }
}
