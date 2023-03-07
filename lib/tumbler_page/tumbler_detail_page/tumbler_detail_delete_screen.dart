import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/tumbler_page/tumbler_detail_page/tumbler_detail_screen.dart';
import 'package:oafe/tumbler_page/tumbler_main_screen.dart';

import '../tumbler_card.dart';

class TumblerCardDeleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Container(
        color: OafePreset.MainColor,
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  "정말 삭제하시나요?",
                  style: TextStyle(
                      fontSize: 36, color: OafePreset.TextBrightColor),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: OafePreset.PointColor),
                    onPressed: () {
                      Get.offAll(() => TumblerMainPage());
                    },
                    child: Container(
                      width: 130,
                      child: const Center(
                        child: Text(
                          '네 삭제할께요',
                          style: TextStyle(
                              fontSize: 24, color: OafePreset.TextBrightColor),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: OafePreset.PointColor),
                    onPressed: () {
                      Get.back(result: TumblerCardDetail());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      width: 130,
                      child: const Center(
                        child: Text(
                          '고민해볼께요',
                          style: TextStyle(
                              fontSize: 24, color: OafePreset.TextBrightColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
