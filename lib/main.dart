import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controllers/orang_controller.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var count = 0.obs;
  void add() {
    count++;
  }

  final orangC = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(
            () => Text(
              "Nama saya ${orangC.orang.nama}",
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          orangC.changeUpper();
        }),
      ),
    );
  }
}
