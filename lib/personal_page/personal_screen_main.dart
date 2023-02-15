import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/personal_page/recent_visit_card.dart';
import 'package:oafe/sidemenu.dart';

import '../setting/oafe_preset.dart';
import '../setting_page/setting_main_screen.dart';

class PersonalPage extends StatelessWidget {
  String userSettingName = "OAFE";

  //String userSettingImage = "";

  PersonalPage({
    Key? key,
    required this.userSettingName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white24,
        iconTheme: const IconThemeData(color: OafePreset.MainColor),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(SettingMainPage());
            },
            icon: Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 390,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: OafePreset.MainColor,
                            border: Border.all(color: OafePreset.MainColor),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.person,
                          size: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "$userSettingName",
                              style: TextStyle(
                                  fontSize: OafePreset.LargeTitleSize),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.mode_edit_outline_outlined,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              UserRecentVisitCard(
                cafeName: 'hanunt',
                cafeLocation: '덕양구 화정동',
                cafeReviewRating: 4.8,
                numberOfUserCafeVisits: 2102,
                numberOfUserWriteCafeReview: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
