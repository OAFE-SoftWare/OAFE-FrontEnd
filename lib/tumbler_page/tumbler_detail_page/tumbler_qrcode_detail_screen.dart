import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/tumbler_page/tumbler_detail_page/tumbler_detail_screen.dart';

class TumblerQRcodeDetail extends StatelessWidget {
  const TumblerQRcodeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Image.asset(
              'images/oafeBlogQrcode.png',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "오아페님의 Tumbler QR",
                    style: TextStyle(
                        color: OafePreset.TextBrightColor, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "등록일자 : ",
                        style: TextStyle(
                            color: OafePreset.TextUnemphasizeColor,
                            fontSize: 12),
                      ),
                      Text(
                        "12",
                        style: TextStyle(
                            color: OafePreset.TextBrightColor, fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "현재 이용 횟수 : ",
                        style: TextStyle(
                            color: OafePreset.TextUnemphasizeColor,
                            fontSize: 12),
                      ),
                      Text(
                        "34회",
                        style: TextStyle(
                            color: OafePreset.TextBrightColor, fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "텀블러 교체 : ",
                        style: TextStyle(
                            color: OafePreset.TextUnemphasizeColor,
                            fontSize: 12),
                      ),
                      Text(
                        "사용 가능",
                        style: TextStyle(
                            color: OafePreset.TextBrightColor, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "지구를 ",
                        style:
                            TextStyle(color: OafePreset.EcoColor, fontSize: 20),
                      ),
                      Text(
                        "38번",
                        style: TextStyle(
                            color: OafePreset.EcoColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "이상 지켜 주실수 있어요!",
                        style:
                            TextStyle(color: OafePreset.EcoColor, fontSize: 20),
                      ),
                    ],
                  )
                ],
              )),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Get.back(result: TumblerCardDetail());
              },
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: OafePreset.PointColor),
                onPressed: () {
                  Get.back(result: TumblerCardDetail());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: OafePreset.PointColor,
                      borderRadius: BorderRadius.circular(14)),
                  child: const Center(
                    child: Text(
                      "제품으로",
                      style: TextStyle(
                          color: OafePreset.TextBrightColor, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
