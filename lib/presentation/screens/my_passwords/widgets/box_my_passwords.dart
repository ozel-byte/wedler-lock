import 'package:flutter/material.dart';

class BoxMyPasswords extends StatelessWidget {
  const BoxMyPasswords({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 70),
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.all(5)),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            elevation: 7,
            surfaceTintColor: Color.fromARGB(255, 215, 215, 215),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(strokeAlign: 1, color: Colors.grey)),
            child: ListTile(
              title: Text("Google account"),
              subtitle: Text("google@gmail.com"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          );
        },
      ),
    );
  }
}
