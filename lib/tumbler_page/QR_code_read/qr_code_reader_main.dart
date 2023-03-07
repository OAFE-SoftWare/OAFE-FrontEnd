import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/tumbler_page/tumbler_detail_page/tumbler_detail_screen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:oafe/setting/oafe_preset.dart';

class QRCodeReaderPage extends StatefulWidget {
  @override
  _QRCodeReaderPageState createState() => _QRCodeReaderPageState();
}

class _QRCodeReaderPageState extends State<QRCodeReaderPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: OafePreset.MainColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: OafePreset.MainColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                        'images/tumbler.png',
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "QR code 촬영 방법",
                        style: TextStyle(
                            color: OafePreset.PointColor, fontSize: 18),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "제품 상단 QR 코드를 화면에 보여주세요!",
                        style: TextStyle(
                            color: OafePreset.TextBrightColor, fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: OafePreset.MainColor,
              child: Center(
                child: (result != null)
                    ? GestureDetector(
                  onTap: (){
                    Get.to(TumblerCardDetail());
                  },
                      child: Container(
                  height: 60,
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: OafePreset.PointColor,
                      borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                            child: Text(
                              '등록완료',
                              style: TextStyle(
                                  fontSize: 24, color: OafePreset.TextBrightColor),
                            )),
                        Text('Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}',style: const TextStyle(
                            fontSize: 12, color: OafePreset.TextBrightColor),)
                      ],
                  ),
                ),
                    )
                    : Container(
                        height: 60,
                        width: double.infinity,
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: OafePreset.PointColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: OafePreset.PointColor,width: 1)
                        ),
                        child: const Center(
                            child: Text(
                          '텀블러 QR 코드를 스캔해주세요!',
                          style: TextStyle(
                              fontSize: 24, color: OafePreset.TextBrightColor),
                        )),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
