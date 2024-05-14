import 'package:flutter/material.dart';
import 'music_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Music App Demo'),
        ),
        body: MusicList(),
      ),
    );
  }
}

// class MusicList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         if (constraints.maxWidth > 600) {
//           //use grid layout for larger screens
//           return GridView.builder(
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             itemCount: playlist.length,
//             itemBuilder: (BuildContext context, int index) {
//               return MusicCard(music: playlist[index]);
//             },
//           );
//         } else {
//           //use list layout for smaller screens
//           return ListView.builder(
//             itemCount: playlist.length,
//             itemBuilder: (BuildContext context, int index) {
//               return MusicCard(music: playlist[index]);
//             },
//           );
//         }
//       },
//     );
//   }
// }
