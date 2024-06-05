class AllCharacters {
  AllCharacters(
      {required this.info, required this.results, required this.location});

  final String info;
  final List<Results> results;
  final String location;

  factory AllCharacters.fromJson(Map<String, dynamic> json) {
    return AllCharacters(
        info: json['info'],
        results: json['results'],
        location: json['location']);
  }
}

class Info {
  Info(
      {required this.count,
      required this.pages,
      required this.next,
      required this.prev,
      required this.image,
      required this.episode,
      required this.url,
      required this.created});

  final int count;
  final int pages;
  final String next;
  final String prev;
  final String image;
  final String episode;
  final String url;
  final String created;

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      count: json['count'],
      pages: json['pages'],
      next: json['next'],
      prev: json['prev'],
      image: json['image'],
      episode: json['episode'],
      url: json['url'],
      created: json['created'],
    );
  }
}

class Results {
  Results({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
  });

  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String origin;
  final String location;
  final String image;
  final String episode;

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: json['origin'],
      location: json['location'],
      image: json['image'],
      episode: json['episode'],
    );
  }
}

class Origin {
  Origin({required this.name, required this.url});

  final String name;
  final String url;

  factory Origin.fromJson(Map<String, dynamic> json) {
    return Origin(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Location {
  Location({required this.name, required this.url});

  final String name;
  final String url;

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      url: json['url'],
    );
  }
}
