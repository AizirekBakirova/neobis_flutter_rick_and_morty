import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/characters_page.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/filter_empty_page.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/filter_page.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/search_empty_page.dart';
import 'package:neobis_flutter_rick_and_morty/features/presentation/pages/search_page.dart';

import 'features/presentation/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CharactersPage(),
    );
  }
}
