import 'package:flutter/material.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/input_search.dart';
import 'package:passwordfamily/presentation/screens/my_passwords/widgets/box_my_passwords.dart';
import 'package:passwordfamily/presentation/screens/my_passwords/widgets/button_new_password.dart';

class SectionMyPassword extends StatelessWidget {
  const SectionMyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: const Stack(
          children: [
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    InputSearch(),
                    SizedBox(
                      height: 10,
                    ),
                    BoxMyPasswords()
                  ],
                ),
              ),
            ),
            Positioned(bottom: 10, left: 5, child: ButtonNewPassword())
          ],
        ));
  }
}
