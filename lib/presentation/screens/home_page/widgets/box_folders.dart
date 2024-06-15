import 'package:flutter/material.dart';

class BoxFolders extends StatelessWidget {
  const BoxFolders({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: SizedBox(
        width: size.width,
        height: 90,
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(left: 10)),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pink,
              ),
              alignment: Alignment.center,
              child: const ListTile(
                leading: Icon(
                  Icons.folder,
                  size: 32,
                ),
                title: Text("Personal"),
                subtitle: Text("10 items"),
              ),
            );
          },
        ),
      ),
    );
  }
}
