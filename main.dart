// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: qwe());
  }
}

class qwe extends StatelessWidget {
  const qwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /*MENGGUNAKAN SHOW MODEL BOTTOM SHEET MENGGUNAKAN DEFAULT DARI MATERIAL APP */
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => Container(
            //     height: 200,
            //     child: ListView(
            //       children: <Widget>[
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text("Home"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.verified_user),
            //           title: Text("Profile"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.settings),
            //           title: Text("Settings"),
            //         ),
            //       ],
            //     ),
            //   ),
            // );

            /*MENGGUNAKAN SHOW MODEL BOTTOM SHEET MENGGUNAKAN FITUR DARI GETX */

            /*
            LEBIH SIMPLE :)
             */

            Get.bottomSheet(
              Container(
                color: Colors.amber,
                height: 200,
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.verified_user),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text("OPEN BOTTOM SHEET"),
        ),
      ),
    );
  }
}
