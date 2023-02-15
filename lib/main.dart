import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/search.dart';
import 'package:oafe/setting/color_repository.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/sidemenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: ColorService.appMainColor(const Color(0xFF342416)),
      ),
      home: const Oafe(),
    );
  }
}

class Oafe extends StatefulWidget {
  const Oafe({Key? key}) : super(key: key);

  @override
  State<Oafe> createState() => _OafeState();
}

class _OafeState extends State<Oafe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: OafePreset.SubColor,
        iconTheme: IconThemeData(color: OafePreset.MainColor),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {
            Get.to(SearchPage());},
              icon: Icon(Icons.search_outlined),)
        ],
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "OAFE",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
