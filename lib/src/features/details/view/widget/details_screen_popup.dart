import 'package:flutter/material.dart';

class AppDetailsScreenPopUpMenu extends StatelessWidget {
  const AppDetailsScreenPopUpMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 1,
            child: Text('New Group'),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text('Settings'),
          ),
          const PopupMenuItem(
            value: 3,
            child: Text('Logout'),
          )
        ]);
  }
}
