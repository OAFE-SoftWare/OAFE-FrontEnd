import 'package:flutter/material.dart';
import 'package:oafe/setting/oafe_preset.dart';

class UserRecentVisitCard extends StatefulWidget {
  String cafeName, cafeLocation;
  int numberOfUserWriteCafeReview, numberOfUserCafeVisits;
  double cafeReviewRating;

  UserRecentVisitCard({
    Key? key,
    required this.cafeName,
    required this.cafeLocation,
    required this.cafeReviewRating,
    required this.numberOfUserCafeVisits,
    required this.numberOfUserWriteCafeReview,
  }) : super(key: key);

  @override
  State<UserRecentVisitCard> createState() => _UserRecentVisitCardState();

  factory UserRecentVisitCard.fromJson(Map<String, dynamic> json){
    var userRecentVisitCardCardinformation = UserRecentVisitCard(
        cafeName: json['cafeName'] as String,
        cafeLocation: json['cafeLocation'] as String,
        cafeReviewRating: json['cafeReviewRating'] as double,
        numberOfUserCafeVisits: json['numberOfUserCafeVisits'] as int,
        numberOfUserWriteCafeReview: json['numberOfUserWriteCafeReview'] as int
    );

        return userRecentVisitCardCardinformation;
  }
}

class _UserRecentVisitCardState extends State<UserRecentVisitCard> {
  final userInterfaceBorderRadius = BorderRadius.circular(10.0);
  late String cafeName, cafeLocation;
  late double cafeReviewRating;
  late int numberOfUserWriteCafeReview, numberOfUserCafeVisits;

  void initState() {
    cafeName = "카페명";
    cafeLocation = "장소";
    cafeReviewRating = 0;
    numberOfUserWriteCafeReview = 0;
    numberOfUserCafeVisits = 0;
  }

  IconData _icon = Icons.bookmark_border_outlined;

  void _changeIcon() {
    setState(() {
      _icon = (_icon == Icons.bookmark_border_outlined)
          ? Icons.bookmark
          : Icons.bookmark_border_outlined;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 950,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: userInterfaceBorderRadius),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "최근 방문",
                  style: TextStyle(fontSize: 24, color: OafePreset.MainColor),
                ),
              ),
              Container(
                child: Center(
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    spacing: 20,
                    runSpacing: 10,
                    children: [
                      //cafecard
                      // ListView.builder(
                      //     itemCount: cafeName.length,
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return Container(
                      //         width: 170,
                      //         height: 260,
                      //         child: Card(
                      //           shape: RoundedRectangleBorder(
                      //             side:
                      //             const BorderSide(color: OafePreset.MainColor),
                      //             borderRadius: userInterfaceBorderRadius,
                      //           ),
                      //           elevation: 4,
                      //           child: Column(
                      //             mainAxisAlignment: MainAxisAlignment.start,
                      //             children: [
                      //               ClipRRect(
                      //                 borderRadius: userInterfaceBorderRadius,
                      //                 child: Container(
                      //                   padding: const EdgeInsets.all(1),
                      //                   decoration: BoxDecoration(
                      //                       color: OafePreset
                      //                           .TextUnemphasizeColor,
                      //                       borderRadius:
                      //                       userInterfaceBorderRadius),
                      //                   child: Stack(
                      //                     children: [
                      //                       Image.network(
                      //                           'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAxMDdfMTgx%2FMDAxNjQxNTM5NzgzNDQ3.IqtCd_3_V90ypPiBFbc0VMDSMzWtwxZq-c2_86mNTw8g.mv4GsdePCVs4pH_C-icJJhJZJVw3JNrjAlTN2YfJepQg.JPEG.ksl8905%2FIMG_3022.jpg&type=sc960_832',
                      //                           width: 170,
                      //                           height: 200,
                      //                           fit: BoxFit.fill,
                      //                           colorBlendMode: BlendMode
                      //                               .modulate,
                      //                           color:
                      //                           OafePreset.TextUnemphasizeColor
                      //                               .withOpacity(0.9)),
                      //                       Positioned(
                      //                         top: 6,
                      //                         left: 6,
                      //                         child: Row(
                      //                           children: [
                      //                             Icon(
                      //                               Icons.people_alt_outlined,
                      //                               size: 12,
                      //                               color:
                      //                               OafePreset.TextBrightColor,
                      //                             ),
                      //                             Text(
                      //                               "$numberOfUserCafeVisits",
                      //                               style: TextStyle(
                      //                                   fontSize: 12,
                      //                                   color: OafePreset
                      //                                       .TextBrightColor),
                      //                             ),
                      //                             Icon(
                      //                                 Icons
                      //                                     .mode_edit_outline_outlined,
                      //                                 size: 12,
                      //                                 color: OafePreset
                      //                                     .TextBrightColor),
                      //                             Text(
                      //                               "$numberOfUserWriteCafeReview",
                      //                               style: TextStyle(
                      //                                   fontSize: 12,
                      //                                   color: OafePreset
                      //                                       .TextBrightColor),
                      //                             ),
                      //                           ],
                      //                         ),
                      //                       ),
                      //                       Positioned(
                      //                         bottom: -5.0,
                      //                         right: -5.0,
                      //                         child: IconButton(
                      //                           icon: Icon(
                      //                             _icon,
                      //                             color: OafePreset.PointColor,
                      //                             size: 30,
                      //                           ),
                      //                           onPressed: _changeIcon,
                      //                         ),
                      //                       ),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ),
                      //               Container(
                      //                 padding: EdgeInsets.symmetric(
                      //                     horizontal: 10),
                      //                 width: double.infinity,
                      //                 child: Column(
                      //                   crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //                   children: [
                      //                     Text(
                      //                       '$cafeName',
                      //                       style: TextStyle(fontSize: 15),
                      //                     ),
                      //                     Row(
                      //                       children: [
                      //                         Icon(
                      //                           Icons.star_border_outlined,
                      //                           size: 12,
                      //                         ),
                      //                         Text(
                      //                           '$cafeReviewRating',
                      //                           style: TextStyle(fontSize: 12),
                      //                         ),
                      //                         Text(
                      //                           '/5.0',
                      //                           style: TextStyle(
                      //                               fontSize: 10,
                      //                               color: OafePreset
                      //                                   .TextUnemphasizeColor),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     Row(
                      //                       children: [
                      //                         Icon(Icons.location_on_outlined,
                      //                             size: 13),
                      //                         Text(
                      //                           "$cafeLocation",
                      //                           style: TextStyle(fontSize: 12),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       );
                      //     }),
                      //임시 보이기
                      Container(
                        width: 170,
                        height: 260,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: OafePreset.MainColor),
                            borderRadius: userInterfaceBorderRadius,
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: userInterfaceBorderRadius,
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                      color: OafePreset.TextUnemphasizeColor,
                                      borderRadius: userInterfaceBorderRadius),
                                  child: Stack(
                                    children: [
                                      Image.network(
                                          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAxMDdfMTgx%2FMDAxNjQxNTM5NzgzNDQ3.IqtCd_3_V90ypPiBFbc0VMDSMzWtwxZq-c2_86mNTw8g.mv4GsdePCVs4pH_C-icJJhJZJVw3JNrjAlTN2YfJepQg.JPEG.ksl8905%2FIMG_3022.jpg&type=sc960_832',
                                          width: 170,
                                          height: 200,
                                          fit: BoxFit.fill,
                                          colorBlendMode: BlendMode.modulate,
                                          color: OafePreset.TextUnemphasizeColor
                                              .withOpacity(0.9)),
                                      Positioned(
                                        top: 6,
                                        left: 6,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.people_alt_outlined,
                                              size: 12,
                                              color: OafePreset.TextBrightColor,
                                            ),
                                            Text(
                                              "$numberOfUserCafeVisits",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: OafePreset
                                                      .TextBrightColor),
                                            ),
                                            Icon(
                                                Icons
                                                    .mode_edit_outline_outlined,
                                                size: 12,
                                                color:
                                                OafePreset.TextBrightColor),
                                            Text(
                                              "$numberOfUserWriteCafeReview",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: OafePreset
                                                      .TextBrightColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -5.0,
                                        right: -5.0,
                                        child: IconButton(
                                          icon: Icon(
                                            _icon,
                                            color: OafePreset.PointColor,
                                            size: 30,
                                          ),
                                          onPressed: _changeIcon,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '$cafeName',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_border_outlined,
                                          size: 12,
                                        ),
                                        Text(
                                          '$cafeReviewRating',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          '/5.0',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: OafePreset
                                                  .TextUnemphasizeColor),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            size: 13),
                                        Text(
                                          "$cafeLocation",
                                          style: TextStyle(fontSize: 12),
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
                      Container(
                        width: 170,
                        height: 260,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: OafePreset.MainColor),
                            borderRadius: userInterfaceBorderRadius,
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: userInterfaceBorderRadius,
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                      color: OafePreset.TextUnemphasizeColor,
                                      borderRadius: userInterfaceBorderRadius),
                                  child: Stack(
                                    children: [
                                      Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAHZrPA5lgl2U_Ya9HT9XdHVxhUJi3lrEmrhy2y2sTvaEGvimUFb2lDkKsF2FaE4atDsU&usqp=CAU',
                                          width: 170,
                                          height: 200,
                                          fit: BoxFit.fill,
                                          colorBlendMode: BlendMode.modulate,
                                          color: OafePreset.TextUnemphasizeColor
                                              .withOpacity(0.9)),
                                      Positioned(
                                        top: 6,
                                        left: 6,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.people_alt_outlined,
                                              size: 12,
                                              color: OafePreset.TextBrightColor,
                                            ),
                                            Text(
                                              "$numberOfUserCafeVisits",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: OafePreset
                                                      .TextBrightColor),
                                            ),
                                            Icon(
                                                Icons
                                                    .mode_edit_outline_outlined,
                                                size: 12,
                                                color:
                                                OafePreset.TextBrightColor),
                                            Text(
                                              "$numberOfUserWriteCafeReview",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: OafePreset
                                                      .TextBrightColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -5.0,
                                        right: -5.0,
                                        child: IconButton(
                                          icon: Icon(
                                            _icon,
                                            color: OafePreset.PointColor,
                                            size: 30,
                                          ),
                                          onPressed: _changeIcon,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '$cafeName',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_border_outlined,
                                          size: 12,
                                        ),
                                        Text(
                                          '$cafeReviewRating',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          '/5.0',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: OafePreset
                                                  .TextUnemphasizeColor),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            size: 13),
                                        Text(
                                          "$cafeLocation",
                                          style: TextStyle(fontSize: 12),
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
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
