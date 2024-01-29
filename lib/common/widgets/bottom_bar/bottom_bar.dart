import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../custom/color.dart';
import '../../../custom/styles.dart';

class KBottomBar extends StatelessWidget {
  const KBottomBar({
    required this.index,
    required this.update,
    super.key,
  });
  final int index;
  final ValueSetter<int> update;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (value) {
        update(value);
      },
      useLegacyColorScheme: false,
      selectedIconTheme: IconThemeData(color: kMainColor),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      iconSize: 25.0,
      selectedLabelStyle: kGreenStyle,
      unselectedLabelStyle: kBlackStyle,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          activeIcon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble_2),
          activeIcon: Icon(CupertinoIcons.chat_bubble_2),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_fill),
          activeIcon: Icon(CupertinoIcons.person_fill),
          label: 'Profile',
        ),
      ],
    );
  }
}
