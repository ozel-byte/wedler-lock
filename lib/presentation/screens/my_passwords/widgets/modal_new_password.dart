import 'package:flutter/material.dart';
import 'package:passwordfamily/presentation/screens/my_passwords/widgets/button_generate.dart';

Future<void> addNewPassword(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(10),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text('Password information'),
        content: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 10,
          runSpacing: 10,
          children: [
            const Text("Password"),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: const Icon(Icons.copy)),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Character Lenght"),
                Text(
                  "8",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            Slider(max: 100, min: 0, value: 20, onChanged: (value) {}),
            CheckboxMenuButton(
                value: false,
                onChanged: (v) {},
                child: const Text("Include uppercase letters")),
            CheckboxMenuButton(
                value: false,
                onChanged: (v) {},
                child: const Text("Include lowercase letters")),
            CheckboxMenuButton(
                value: false,
                onChanged: (v) {},
                child: const Text("Include numbers")),
            CheckboxMenuButton(
                value: false,
                onChanged: (v) {},
                child: const Text("Include symbols")),
          ],
        ),
        actions: const <Widget>[ButtonGenerate()],
      );
    },
  );
}
