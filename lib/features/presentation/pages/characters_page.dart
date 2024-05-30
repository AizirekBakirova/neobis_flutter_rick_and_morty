import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/data/models.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/profile_page.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/characters_page/amount_widgets.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/characters_page/text_form_field_button.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  bool _isListView = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
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
                      onPressed: () {
                        setState(() {
                          _isListView = !_isListView;
                        });
                      },
                      icon: _isListView
                          ? SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset('assets/icons/grid.png'))
                          : SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset('assets/icons/listicon.png')))
                ],
              ),
              Expanded(
                child: _isListView ? _buildListView() : _buildGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: buildCharacterList(characters[index]));
      },
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: buildCharacterGrid(characters[index]));
      },
    );
  }

  Widget buildCharacterList(Character character) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 343,
        height: 74,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 74,
                  height: 74,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(character.images))),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.status,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: character.status == 'ЖИВОЙ'
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      character.name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.nameColor),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      character.description,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.genderColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCharacterGrid(Character character) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 164,
        height: 192,
        child: Column(
          children: [
            Container(
              width: 120,
              height: 122,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(character.images))),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  character.status,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color:
                        character.status == 'ЖИВОЙ' ? Colors.green : Colors.red,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  character.name,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.nameColor),
                ),
                const SizedBox(height: 4),
                Text(
                  character.description,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.genderColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
