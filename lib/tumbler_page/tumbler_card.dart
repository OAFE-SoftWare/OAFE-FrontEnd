import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/setting/oafe_preset.dart';
import 'package:oafe/tumbler_page/tumbler_detail_screen.dart';

class TumblerCard extends StatefulWidget {
  String name;
  int age;
  String gender;
  bool isKorean;

  TumblerCard({
    Key? key,
    required this.name,
    required this.age,
    required this.gender,
    required this.isKorean,
  }) : super(key: key);

  @override
  State<TumblerCard> createState() => _TumblerCardState();
}

class _TumblerCardState extends State<TumblerCard> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //등록 카드
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: OafePreset.MainColor,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(50, 0, 0, 0),
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          //child: Text(name ?? '등록하기'),
                          height: 112,
                          width: 120,
                          decoration: BoxDecoration(
                            color: OafePreset.TextBrightColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(
                            Icons.photo_camera_outlined,
                            size: 50,
                          ),
                        ),
                        const Text(
                          "등록하기",
                          style: TextStyle(color:OafePreset.TextBrightColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //텀블러 카드
        GestureDetector(
          onTap: (){
            Get.to(const TumblerCardDetail());
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 130,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: OafePreset.MainColor,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0),
                              blurRadius: 3.0,
                              spreadRadius: 1.0,
                              offset: Offset(0, 3)),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            //child: Text(name ?? '등록하기'),
                            height: 112,
                            width: 120,
                            decoration: BoxDecoration(
                              color: OafePreset.TextBrightColor,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: const Icon(
                              Icons.coffee_outlined,
                              size: 50,
                            ),// 이미지로 변경
                          ),
                          const Text(
                            "Tumbler",
                            style: TextStyle(color: OafePreset.TextBrightColor),
                          ), //텀블러 이름에 맞춰 변경
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
