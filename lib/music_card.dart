import 'package:flutter/material.dart';
import 'music.dart';

class MusicCard extends StatelessWidget {
  final Music music;

  MusicCard({required this.music});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(music.title),
        subtitle: Text(music.artist),
        onTap: () {
          //Handle music item click
        },
      ),
    );
  }
}
