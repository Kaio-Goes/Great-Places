import 'package:flutter/material.dart';
import 'package:great_places/screens/places_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(secondary: Colors.amber)),
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.placeForm: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}
