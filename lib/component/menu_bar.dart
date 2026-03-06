import 'package:flutter/material.dart';

class MenuBars extends StatelessWidget {
  final String menuBarPage;

  const MenuBars({
    super.key,
    required this.menuBarPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xffE2E2E2))),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Discover
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/discover'),
            child: MenuBarItem(
              iconPath: 'assets/icon/discover-menu.png',
              label: 'DISCOVER',
              isSelected: menuBarPage == "discover",
            ),
          ),
          // Reserve
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/reserve'),
            child: MenuBarItem(
              iconPath: 'assets/icon/reserve-menu.png',
              label: 'RESERVE',
              isSelected: menuBarPage == "reserve",
            ),
          ),
          // Forum
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/forum'),
            child: MenuBarItem(
              iconPath: 'assets/icon/forum-menu.png',
              label: 'FORUM',
              isSelected: menuBarPage == "forum",
            ),
          ),
          // Profile
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/profile'),
            child: MenuBarItem(
              iconPath: 'assets/icon/profile-menu.png',
              label: 'PROFILE',
              isSelected: menuBarPage == "profile",
            ),
          ),
        ],
      ),
    );
  }
}

class MenuBarItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;

  const MenuBarItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Image.asset(
            iconPath,
            color:
                isSelected ? const Color(0xff899B2D) : const Color(0xff717171),
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontFamily: "Inria Sans",
            color:
                isSelected ? const Color(0xff899B2D) : const Color(0xff717171),
          ),
        ),
      ],
    );
  }
}
