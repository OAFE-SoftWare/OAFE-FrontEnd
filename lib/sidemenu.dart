import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/main.dart';
import 'package:oafe/personal_page/personal_screen_main.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/tumbler_page/tumbler_upload_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: OafePreset.MainColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const PersonalPage());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'User',
                              style: TextStyle(
                                  color: OafePreset.TextBrightColor,
                                  fontSize: 36),
                            ),
                            Text(
                              'Membership',
                              style: TextStyle(
                                  color: OafePreset.TextUnemphasizeColor,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: OafePreset.TextBrightColor,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                  width: 150,
                  child: ColoredBox(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: GestureDetector(
              onTap: () {
                Get.to(Oafe());
              },
              child: const ListTile(
                leading: Icon(
                  Icons.coffee_outlined,
                  color: OafePreset.TextBrightColor,
                  size: 40,
                ),
                title: Text(
                  '지도 보기',
                  style: TextStyle(
                    color: OafePreset.TextBrightColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: GestureDetector(
              onTap: () {
                Get.to(const TumblerMainPage());
              },
              child: const ListTile(
                leading: Icon(
                  Icons.thumb_up_alt_outlined,
                  color: OafePreset.TextBrightColor,
                  size: 40,
                ),
                title: Text(
                  '내 텀블러',
                  style: TextStyle(
                    color: OafePreset.TextBrightColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: ListTile(
              leading: const Icon(
                Icons.settings,
                color: OafePreset.TextBrightColor,
                size: 40,
              ),
              title: const Text(
                '설정',
                style: TextStyle(
                  color: OafePreset.TextBrightColor,
                  fontSize: 24,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
