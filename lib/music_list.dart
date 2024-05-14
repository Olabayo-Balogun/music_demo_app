import 'package:flutter/material.dart';
import 'music.dart';
import 'music_card.dart';

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 600
        ? _buildGridList()
        : _buildList();
  }
}

Widget _buildGridList() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: playlist.length,
    itemBuilder: (BuildContext context, int index) {
      return MusicCard(music: playlist[index]);
    },
  );
}

Widget _buildList() {
  return ListView.builder(
    itemCount: playlist.length,
    itemBuilder: (BuildContext context, int index) {
      return MusicCard(music: playlist[index]);
    },
  );
}
