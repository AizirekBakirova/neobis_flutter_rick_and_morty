class Character {
  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
  });

  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;

  final String image;

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      image: json['image'],
    );
  }
}

class Origin {
  Origin({required this.name, required this.url});

  final String name;
  final String url;

  factory Origin.fromJson(Map<String, dynamic> json) {
    return Origin(name: json['name'], url: json['url']);
  }
}

class Location {
  Location({required this.name, required this.url});

  final String name;
  final String url;

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(name: json['name'], url: json['url']);
  }
}

class Episode {
  Episode(
      {required this.id,
      required this.name,
      required this.airDate,
      required this.episode,
      required this.characters});
  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
        id: json['id'],
        name: json['name'],
        airDate: json['air_date'],
        episode: json['episode'],
        characters: List<String>.from(json['characters']));
  }
}
