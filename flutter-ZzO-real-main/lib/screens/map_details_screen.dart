
import 'package:flutter/material.dart';
import '../models/map.dart';

class MapDetailScreen extends StatelessWidget {
  final Map map;

  const MapDetailScreen({
    super.key,
    required this.map,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(map.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal),
              ),
              child: Row(
                children: [
                  Icon(map.icon, size: 48, color: Colors.teal),
                  const SizedBox(width: 12),
                  Expanded(child: Text(map.comment)),
                ],
              ),
            ),
            Text(
              map.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),

            if (map.wingman)
              const Text("Ima Wingman mapu")
            else
              const Text("Nema Wingman mapu"),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Natrag"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
