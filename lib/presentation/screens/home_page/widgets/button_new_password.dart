import 'package:flutter/material.dart';

class ButtonNewPassword extends StatelessWidget {
  const ButtonNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
              fixedSize: MaterialStatePropertyAll(Size(size.width / 2, 55)),
              backgroundColor: const MaterialStatePropertyAll(
                  Color.fromARGB(255, 30, 30, 30)),
              foregroundColor: const MaterialStatePropertyAll(Colors.white)),
          onPressed: () {},
          child: const Text("Add a new password")),
    );
  }
}
