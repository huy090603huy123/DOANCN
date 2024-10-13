import 'package:flutter/material.dart';
import 'package:cnpmapp/models/contacts.dart';
import 'package:cnpmapp/global_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Contact extends ConsumerWidget {
  Contact({Key? key}) : super(key: key);
  int index = 0;
  List<Info> infoPerson = [
    Info(image: "assets/hoang.png", name: 'Ngô Trần Hoàng', infomation: ''),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 120,
                  // ),
                  Image.asset(
                    'assets/background.jpg',
                    fit: BoxFit.fitHeight,
                    height: MediaQuery.sizeOf(context).height,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 400,
                        width: 300,
                        child: Image.asset(
                          infoPerson[ref.watch(stateContact)].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  infoPerson[ref.watch(stateContact)].name,
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                Align(
                  child: Text(
                    infoPerson[ref.watch(stateContact)].infomation,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (ref.read(stateContact) <= 0) {
                          ref.read(stateContact.state).state = 0;
                        } else
                          ref.read(stateContact.state).state--;
                      },
                      child: Text('PREVIOS'),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (ref.read(stateContact) >= infoPerson.length - 1) {
                          ref.read(stateContact.state).state =
                              infoPerson.length - 1;
                        } else
                          ref.read(stateContact.state).state++;
                      },
                      child: Text('NEXT'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
