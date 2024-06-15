import 'package:flutter/material.dart';
import 'package:passwordfamily/modules/bottom_navigation_bar_provider.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/custom_bottom_navigation.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/section_home.dart';
import 'package:passwordfamily/presentation/screens/my_passwords/section_my_password.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  final List<Widget> screens = const [SectionHome(), SectionMyPassword()];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavigationBarProvider(),
      builder: (context, child) => Scaffold(
          backgroundColor: const Color(0xff5666F7),
          appBar: AppBar(
            backgroundColor: const Color(0xff5666F7),
            foregroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              "LockBox",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: screens[
              context.watch<BottomNavigationBarProvider>().currentScreen],
          bottomNavigationBar: const CustomNavigationBar()),
    );
  }
}
