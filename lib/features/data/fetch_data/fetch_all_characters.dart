import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:neobis_flutter_rick_and_morty/features/data/models/all_characters.dart';

Future<List<Character>> fetchAllCharacters() async {
  final response =
      await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final results = data['results'] as List;
    return results
        .map((allCharactersJson) => Character.fromJson(allCharactersJson))
        .toList();
  } else {
    throw Exception('Failed to load characters');
  }
}

Future<Episode> fetchEpisodeDetails(int id) async {
  final response =
      await http.get(Uri.parse('https://rickandmortyapi.com/api/episode/$id'));
  if (response.statusCode == 200) {
    return Episode.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load episode');
  }
}
