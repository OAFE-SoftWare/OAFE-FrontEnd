import 'package:flutter/material.dart';
import 'package:oafe/sidemenu.dart';

import '../setting/oafe_preset.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: OafePreset.SubColor,
        iconTheme: const IconThemeData(color: OafePreset.MainColor),
        elevation: 0,
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
                decoration: BoxDecoration(
                  border: Border.all(color: OafePreset.MainColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "OAFE",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: OafePreset.MainColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "최근방문",
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
