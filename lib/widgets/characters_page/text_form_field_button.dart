import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/data/models.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';

class TextFormFieldButton extends StatefulWidget {
  const TextFormFieldButton({
    super.key,
  });

  @override
  State<TextFormFieldButton> createState() => _TextFormFieldButtonState();
}

class _TextFormFieldButtonState extends State<TextFormFieldButton> {
  List<Character> display_list = [];

  void updateList(String value) {
    setState(() {
      display_list = characters
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    display_list = characters;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: updateList,
      style: AppTextStyles.whiteTextProfPage,
      cursorHeight: 44,
      cursorWidth: 328,
      decoration: InputDecoration(
        prefixIcon: GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints(maxHeight: 24.0, minWidth: 24.0),
            child: Image.asset('assets/icons/search.png'),
          ),
        ),
        filled: true,
        fillColor: AppColors.textFFColor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
        hintText: 'Найти персонажа',
        hintStyle: const TextStyle(
            color: AppColors.searchTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        suffixIcon:
            // Container(
            //   constraints: BoxConstraints(maxHeight: 24.0, minWidth: 24.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       SizedBox(
            //           width: 24,
            //           height: 24,
            //           child: Image.asset('assets/icons/line.png')),
            //       Container(
            //         child: IconButton(
            //             onPressed: () {},
            //             icon: Image.asset('assets/icons/filter.png')),
            //       )
            //     ],
            //   ),
            // )
            Container(
          padding: EdgeInsets.all(10),
          constraints: BoxConstraints(maxHeight: 24.0, minWidth: 24.0),
          child: Image.asset('assets/icons/filter.png'),
        ),
      ),
    );
  }
}