import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/svg_icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static List<Widget> svgList = <Widget>[
    SvgPicture.asset('assets/svg/character.svg'),
    SvgPicture.asset('assets/svg/location.svg'),
    SvgPicture.asset('assets/svg/episode.svg'),
    SvgPicture.asset('assets/svg/Settings.svg'),
  ];

  int _activeTab = 0;
  void onSelectTsb(int index) {
    if (_activeTab == index) return;
    setState(() {
      _activeTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
      ),
      body: Center(
        child: svgList[_activeTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeTab,
        selectedItemColor: const Color(0xff22A2BD),
        unselectedItemColor: const Color(0xffBDBDBD),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgIcon.character,
            activeIcon: SvgIcon.characterActive,
            label: 'Персонажи',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon.location,
            activeIcon: SvgIcon.locationActive,
            label: 'Локации',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon.episode,
            activeIcon: SvgIcon.episodeActive,
            label: 'Эпизоды',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon.settings,
            activeIcon: SvgIcon.settingsActive,
            label: 'Настройки',
          ),
        ],
        onTap: onSelectTsb,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.green[100],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 50),
              Text('one !'),
              Text('two !'),
            ],
          ),
        ),
      ),
    );
  }
}
