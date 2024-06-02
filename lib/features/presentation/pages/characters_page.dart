import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/filter_page.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/profile_page.dart';
import 'package:neobis_flutter_rick_and_morty/styles/app_colors.dart';
import 'package:neobis_flutter_rick_and_morty/styles/text_style.dart';
import 'package:neobis_flutter_rick_and_morty/widgets/characters_page/amount_widgets.dart';

class Character {
  final String name;
  final String status;
  final String gender;
  final String images;
  final String backgroundImage;

  Character({
    required this.name,
    required this.status,
    required this.gender,
    required this.images,
    required this.backgroundImage,
  });
}

List<Character> characters = [
  Character(
    name: 'Рик Санчез',
    status: 'ЖИВОЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/1.png',
    backgroundImage: 'assets/images/1.png',
  ),
  Character(
    name: 'Директор Агентства',
    status: 'ЖИВОЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/2.png',
    backgroundImage: 'assets/images/2.png',
  ),
  Character(
    name: 'Морти Смит',
    status: 'ЖИВОЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/3.png',
    backgroundImage: 'assets/images/3.png',
  ),
  Character(
    name: 'Саммер Смит',
    status: 'ЖИВОЙ',
    gender: 'Человек, Женский',
    images: 'assets/images/4.png',
    backgroundImage: 'assets/images/4.png',
  ),
  Character(
    name: 'Альберт Эйнштейн',
    status: 'МЕРТВЫЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/5.png',
    backgroundImage: 'assets/images/5.png',
  ),
  Character(
    name: 'Алан Райлз',
    status: 'МЕРТВЫЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/6.png',
    backgroundImage: 'assets/images/6.png',
  ),
];

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  bool _isListView = true;
  final List<Character> _characters = characters;
  List<Character> _filteredCharacters = characters;
  final TextEditingController _controller = TextEditingController();

  void _filterCharacters(String query) {
    final filtered = _characters.where((character) {
      final nameLower = character.name.toLowerCase();
      final queryLower = query.toLowerCase();
      return nameLower.contains(queryLower);
    }).toList();
    setState(() {
      _filteredCharacters = filtered;
    });
  }

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
              Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.textFFColor,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/search.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                          onChanged: _filterCharacters,
                        style: AppTextStyles.whiteTextProfPage,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Найти персонажа',
                          hintStyle: TextStyle(
                            color: AppColors.searchTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/icons/filter.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
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
                child: _filteredCharacters.isEmpty
                    ? Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            SizedBox(
                                width: 134,
                                height: 224,
                                child: Image.asset('assets/images/search.png')),
                            const SizedBox(height: 15),
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
                      )
                    : _isListView
                        ? _buildListView()
                        : _buildGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: _filteredCharacters.length,
      itemBuilder: (context, index) {
        final character = _filteredCharacters[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePage(
                            name: character.name,
                            image: character.images,
                            gender: character.gender,
                            backgroundImage: character.backgroundImage,
                            description: character.status,
                          )));
            },
            child: Padding(
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
                              character.gender,
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
            ));
      },
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: _filteredCharacters.length,
      itemBuilder: (context, index) {
        final character = _filteredCharacters[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePage(
                            image: character.images,
                            name: character.name,
                            gender: character.gender,
                            backgroundImage: character.backgroundImage,
                            description: character.status,
                          )));
            },
            child: Padding(
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
                              fit: BoxFit.cover,
                              image: AssetImage(character.images))),
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
                          character.gender,
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
            ));
      },
    );
  }
}
