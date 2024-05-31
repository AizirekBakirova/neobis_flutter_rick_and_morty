class Character {
  final String name;
  final String status;
  final String gender;
  final String images;

  Character({
    required this.name,
    required this.status,
    required this.gender,
    required this.images,
  });
}

List<Character> characters = [
  Character(
    name: 'Рик Санчез',
    status: 'ЖИВОЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/1.png',
  ),
  Character(
    name: 'Директор Агентства',
    status: 'ЖИВОЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/2.png',
  ),
  Character(
    name: 'Морти Смит',
    status: 'ЖИВОЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/3.png',
  ),
  Character(
    name: 'Саммер Смит',
    status: 'ЖИВОЙ',
    gender: 'Человек, Женский',
    images: 'assets/images/4.png',
  ),
  Character(
    name: 'Альберт Эйнштейн',
    status: 'МЕРТВЫЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/5.png',
  ),
  Character(
    name: 'Алан Райлз',
    status: 'МЕРТВЫЙ',
    gender: 'Человек, Мужской',
    images: 'assets/images/6.png',
  ),
];
