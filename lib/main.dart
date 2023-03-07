import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:oafe/search.dart';
import 'package:oafe/setting/color_repository.dart';
import 'package:oafe/setting/login/kakao_login_screen.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/sidemenu.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '6134b0eeec95701b53f402c2ac490c97');
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
          IconButton(
            onPressed: () {
              Get.to(SearchPage());
            },
            icon: Icon(Icons.search_outlined),
          )
        ],
      ),
      drawer: const SideMenu(),
      body: SampleScreen()
    );
  }
}
