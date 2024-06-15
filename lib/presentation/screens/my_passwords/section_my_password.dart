import 'package:flutter/material.dart';
import 'package:passwordfamily/presentation/screens/home_page/widgets/input_search.dart';

class SectionMyPassword extends StatelessWidget {
  const SectionMyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Card(
              margin: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    const InputSearch(),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 70),
                        separatorBuilder: (context, index) =>
                            const Padding(padding: EdgeInsets.all(5)),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return const Card(
                            elevation: 7,
                            surfaceTintColor:
                                Color.fromARGB(255, 215, 215, 215),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    strokeAlign: 1, color: Colors.grey)),
                            child: ListTile(
                              title: Text("Google account"),
                              subtitle: Text("google@gmail.com"),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 5,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(10),
                      shadowColor: const MaterialStatePropertyAll(Colors.black),
                      overlayColor:
                          const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      fixedSize:
                          MaterialStatePropertyAll(Size(size.width - 10, 55)),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 30, 30, 30)),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Add a new password"),
                      Icon(Icons.add)
                    ],
                  )),
            )
          ],
        ));
  }
}
