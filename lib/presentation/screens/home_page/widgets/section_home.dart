import 'package:flutter/material.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/box_folders.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/box_recently.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/button_new_folder.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/input_search.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/title.dart';

class SectionHome extends StatelessWidget {
  const SectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: const Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputSearch(),
                SizedBox(
                  height: 20,
                ),
                CustomTitle(title: "Folders"),
                BoxFolders(),
                ButtonNewFolder(),
                SizedBox(
                  height: 20,
                ),
                CustomTitle(title: "Recently"),
                BoxRecently()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
