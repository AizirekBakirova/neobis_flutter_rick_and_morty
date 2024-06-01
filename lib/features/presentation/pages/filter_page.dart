import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/filter_page/gender_widget.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/filter_page/sort_widget.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/filter_page/status_widget.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/filter_page/top_filter_widget.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            TopFilterWidget(),
            // SortWidget(),
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
                                  width: 28,
                                  height: 28,
                                  child: Image.asset(
                                      'assets/icons/Business, Chart.15 (1).png'))),
                          IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                  width: 22,
                                  height: 22,
                                  child:
                                      Image.asset('assets/icons/sort2.png'))),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 12, right: 15, bottom: 12),
                  child: Image.asset('assets/icons/Line 3 (1).png'),
                ),
              ],
            ),
            // StatusWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: const EdgeInsets.only(
                      left: 15, top: 12, right: 15, bottom: 12),
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
            // GenderWidget()
            Column(
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
            ),
          ],
        ),
      ),
    );
  }
}
