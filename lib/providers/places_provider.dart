import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesNotifier extends StateNotifier<List<Place>> {
  PlacesNotifier()
    : super([
        Place(title: 'Place 1'),
        Place(title: 'Place 2'),
        Place(title: 'Place 3'),
        Place(title: 'Place 4'),
        Place(title: 'Place 5'),
      ]);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [...state, newPlace];
  }
}

final placesProvider = StateNotifierProvider<PlacesNotifier, List<Place>>((
  ref,
) {
  return PlacesNotifier();
});
