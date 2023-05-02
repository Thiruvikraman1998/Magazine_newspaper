import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:magazine_newspaper/screens/collections.dart';
import 'package:magazine_newspaper/screens/onboarding.dart';
import 'package:magazine_newspaper/screens/srz.dart';
import 'package:magazine_newspaper/screens/stories.dart';
import 'package:magazine_newspaper/screens/unlimited.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int _selectedIndex = 0;
  static final List<Widget> screens = <Widget>[
    const OnBoardingScreen(),
    const UnlimitedScreen(),
    const StoriesScreen(),
    const SrzScreen(),
    const CollectionsScreen(),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 2000),
        child: BottomNavigationBar(
            onTap:
                _onTapItem, // sends the index of the icon that is pressed to _onTapItem(int index) method.
            currentIndex: _selectedIndex,
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
