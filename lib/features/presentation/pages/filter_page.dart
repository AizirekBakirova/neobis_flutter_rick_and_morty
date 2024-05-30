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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopFilterWidget(),
            SortWidget(),
            StatusWidget(),
            GenderWidget()
          ],
        ),
      ),
    );
  }
}
