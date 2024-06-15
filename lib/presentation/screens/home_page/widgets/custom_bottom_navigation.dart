import 'package:flutter/material.dart';
import 'package:passwordfamily/modules/bottom_navigation_bar_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        indicatorColor: const Color.fromARGB(255, 184, 223, 255),
        elevation: 6,
        selectedIndex:
            context.watch<BottomNavigationBarProvider>().currentScreen,
        onDestinationSelected: (value) {
          context.read<BottomNavigationBarProvider>().changeScreen(value);
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined), label: "Home"),
          NavigationDestination(
            selectedIcon: Icon(Icons.lock),
              icon: Icon(Icons.lock_outline_rounded), label: "Passwords"),
          NavigationDestination(
            selectedIcon: Icon(Icons.folder),
              icon: Icon(Icons.folder_open_outlined), label: "Folders"),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined), label: "Settings"),
        ]);
  }
}
