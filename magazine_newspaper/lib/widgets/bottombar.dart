import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Onboarding screen"),
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 2000),
        child: BottomNavigationBar(
            unselectedItemColor: Colors.grey[700],
            selectedItemColor: const Color(0xFF2653B4),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            iconSize: 32,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "HOME"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book_sharp), label: "UNLIMITED"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_news_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_news_filled),
                  label: "STORIES"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_location_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_location_filled),
                  label: "SRZ"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_library_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_library_filled),
                  label: "COLLECTIONS"),
            ]),
      ),
    );
  }
}
