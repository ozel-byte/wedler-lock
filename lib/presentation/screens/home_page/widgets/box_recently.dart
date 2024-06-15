import 'package:flutter/material.dart';

class BoxRecently extends StatelessWidget {
  const BoxRecently({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 250,
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: size.width,
            child: const Card(
              elevation: 6,
              surfaceTintColor: Color.fromARGB(255, 217, 178, 223),
              child: ListTile(
                title: Text("Google account"),
                subtitle: Text("ace@gmail.com"),
              ),
            ),
          );
        },
      ),
    );
  }
}
