import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/characters_page/amount_widgets.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/characters_page/text_form_field_button.dart';

class FilterEmptyPage extends StatelessWidget {
  const FilterEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 15, bottom: 12, left: 15, top: 12),
          child: Column(
            children: [
              const TextFormFieldButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AmountWidget(),
                  IconButton(
                      onPressed: () {},
                      icon: SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/icons/grid.png'),
                      ))
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  SizedBox(
                      width: 134,
                      height: 224,
                      child: Image.asset('assets/images/image 2 (1).png')),
                  const Center(
                    child: Text(
                      'По данным фильтра ничего\n              не найдено',
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
      ),
    );
  }
}
