import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesNotifier extends StateNotifier<List<Place>> {
  PlacesNotifier()
    : super([
        const Place(id: 'p1', title: 'Place 1'),
        const Place(id: 'p2', title: 'Place 2'),
        const Place(id: 'p3', title: 'Place 3'),
        const Place(id: 'p4', title: 'Place 4'),
        const Place(id: 'p5', title: 'Place 5'),
      ]);

  void addPlace(String title) {
    final newPlace = Place(id: DateTime.now().toString(), title: title);
    state = [...state, newPlace];
  }
}

final placesProvider = StateNotifierProvider<PlacesNotifier, List<Place>>((
  ref,
) {
  return PlacesNotifier();
});
