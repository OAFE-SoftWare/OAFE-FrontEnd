import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/tumbler_page/tumbler_card.dart';

import '../sidemenu.dart';
import 'QR_code_read/qr_code_reader_main.dart';

class TumblerMainPage extends StatelessWidget {
  const TumblerMainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: OafePreset.TextUnemphasizeColor,
        iconTheme: IconThemeData(color: OafePreset.MainColor),
        elevation: 0,
      ),
      drawer: const SideMenu(),
      backgroundColor: OafePreset.TextUnemphasizeColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child:
                TumblerCard(name: '성공', age: 200, gender: "재간", isKorean: true),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 25),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(QRCodeReaderPage());
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xfff6f6f6),
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: OafePreset.MainColor,
                                  style: BorderStyle.solid,
                                  width: 1.3,

                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  size: 150,
                                  color: OafePreset.MainColor,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Click! 텀블러를 보여주세요!",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: OafePreset.MainColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "OAFE Tumbler",
                                style: TextStyle(
                                    fontSize: 18, color: OafePreset.TextDarkColor),
                              ),
                              Text(
                                "Reusable Tumbler",
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          const Icon(Icons.qr_code_2_rounded, size: 100),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "오아페와 함께 지구를 사랑해주셔서 감사합니다.",
                            style: TextStyle(
                              color: OafePreset.EcoColor,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "권장 이용 횟수: ",
                                style: TextStyle(
                                  color: OafePreset.TextUnemphasizeColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "50 ~ 100",
                                style: TextStyle(
                                  color: OafePreset.TextDarkColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}