import 'package:favorite_places/providers/places_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Place'),
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.shadow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(label: Text('Title')),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(placesProvider.notifier)
                    .addPlace(_titleController.text);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Place "${_titleController.text}" added!'),
                  ),
                );
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  const Icon(Icons.add),
                  SizedBox(width: 8),
                  Text('Add place'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
