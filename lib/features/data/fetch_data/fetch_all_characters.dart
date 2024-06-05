import 'dart:convert';

import 'package:neobis_flutter_rick_and_morty/constants/api_const.dart';
import 'package:neobis_flutter_rick_and_morty/features/data/models/all_characters.dart';
import 'package:http/http.dart' as http;

class FetchAllCharacters {
  Future<AllCharacters?> fetchAllCharacters([String? domain]) async {
    try {
      final response =
          await http.get(Uri.parse(ApiConst.charactersData(domain)));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final allCharacters = AllCharacters.fromJson(data);
        return allCharacters;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
