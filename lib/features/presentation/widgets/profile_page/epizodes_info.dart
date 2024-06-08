import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/styles/text_style.dart';

class EpizodesInfo extends StatefulWidget {
  const EpizodesInfo({
    super.key,
  });

  @override
  State<EpizodesInfo> createState() => _EpizodesInfoState();
}

class _EpizodesInfoState extends State<EpizodesInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Эпизоды',
            style: AppTextStyles.epizodeTextProfPage,
          ),
          SingleChildScrollView(
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Серия 1',
                          style: AppTextStyles.blueTextProfPage,
                        ),
                        Text(
                          'Пилот',
                          style: AppTextStyles.whiteMiddleTextProfPage,
                        ),
                        Text(
                          '2 декабря 2013',
                          style: AppTextStyles.greyTextProfPage,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
