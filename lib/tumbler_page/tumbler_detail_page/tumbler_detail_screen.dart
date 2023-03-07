import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/tumbler_page/QR_code_read/qr_code_reader_main.dart';
import 'package:oafe/tumbler_page/tumbler_detail_page/tumbler_detail_delete_screen.dart';

class TumblerCardDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
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
                            Icons.coffee_rounded,
                            size: 150,
                            color: OafePreset.MainColor,
                          ),
                          SizedBox(
                            height: 20,
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
                    const Icon(Icons.qr_code_2, size: 100),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "오아페와 함께 지구를 사랑해주셔서 감사합니다.",
                      style: TextStyle(
                        color: OafePreset.EcoColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "현재 이용 횟수 : ",
                          style: TextStyle(
                              fontSize: 16,
                              color: OafePreset.TextUnemphasizeColor),
                        ),
                        Text(
                          "34회",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "권장 이용: ",
                          style: TextStyle(
                            color: OafePreset.TextUnemphasizeColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "50회 ~ 100회",
                          style: TextStyle(
                            color: OafePreset.TextDarkColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: OafePreset.MainColor,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                          color: OafePreset.PointColor, width: 1)),
                  child: GestureDetector(
                    onTap: (){
                      Get.bottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(14),
                            ),
                          ),
                          backgroundColor: OafePreset.MainColor,
                          isScrollControlled: true,
                          ignoreSafeArea: false ,
                          SafeArea(child: TumblerCardDeleteScreen()));
                    },
                    child: const Center(
                        child: Text(
                          '삭제하기',
                          style: TextStyle(
                              fontSize: 24, color: OafePreset.TextBrightColor),
                        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
