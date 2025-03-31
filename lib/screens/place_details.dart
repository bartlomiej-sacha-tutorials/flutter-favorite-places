import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.shadow,
      ),
      body: Center(
        child: Text(
          'Details for ${place.title}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
