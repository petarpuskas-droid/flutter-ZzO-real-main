
import 'package:flutter/material.dart';

import '../models/map.dart';
import 'map_details_screen.dart';

class MapListScreen extends StatefulWidget {
  const MapListScreen({super.key});

  @override
  State<MapListScreen> createState() => _MapListScreenState();
}

class _MapListScreenState extends State<MapListScreen> {
  final Set<String> joined = {};

  Future<void> openDetails(Map map) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => MapDetailScreen(
          map: map,
        ),
      ),
    );

    if (result == true) {
      setState(() {
        joined.add(map.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popis mapa CS2"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: maps.length,
        itemBuilder: (context, index) {
          final map = maps[index];

          return ActivityTile(
            map: map,
            onOpen: () => openDetails(map),
          );
        },
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  final Map map;
  final VoidCallback onOpen;

  const ActivityTile({
    super.key,
    required this.map,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            map.icon,
            size: 32,
            color: Colors.grey,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  map.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(map.comment),
              ],
            ),
          ),
          IconButton(
            onPressed: onOpen,
            icon: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
