import 'package:flutter/material.dart';
import 'package:passwordfamily/presentation/screens/my_passwords/widgets/button_generate.dart';
import 'package:passwordfamily/presentation/screens/my_passwords/widgets/modal_new_password.dart';

class ButtonNewPassword extends StatelessWidget {
  const ButtonNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(10),
            shadowColor: const MaterialStatePropertyAll(Colors.black),
            overlayColor: const MaterialStatePropertyAll(Colors.black),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            fixedSize: MaterialStatePropertyAll(Size(size.width - 10, 55)),
            backgroundColor:
                const MaterialStatePropertyAll(Color.fromARGB(255, 30, 30, 30)),
            foregroundColor: const MaterialStatePropertyAll(Colors.white)),
        onPressed: () {
          addNewPassword(context);
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Add a new password"), Icon(Icons.add)],
        ));
  }

  
}
