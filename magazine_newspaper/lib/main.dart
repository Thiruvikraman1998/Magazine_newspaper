import "package:flutter/material.dart";
import 'package:magazine_newspaper/menu_bar/bottombar.dart';

void main(List<String> args) {
  runApp(const MagazineApp());
}

class MagazineApp extends StatelessWidget {
  const MagazineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
