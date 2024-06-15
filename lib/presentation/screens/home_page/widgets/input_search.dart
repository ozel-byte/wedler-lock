import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({super.key});

  final OutlineInputBorder _outlineInputBorder = const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(40)));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search...",
          filled: true,
          fillColor: const Color.fromARGB(255, 224, 224, 224),
          contentPadding: const EdgeInsets.only(left: 10),
          suffixIcon: const Icon(Icons.search),
          enabledBorder: _outlineInputBorder,
          focusedBorder: _outlineInputBorder,
        ),
      ),
    );
  }
}
