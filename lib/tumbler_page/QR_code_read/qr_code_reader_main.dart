import 'package:flutter/material.dart';
import 'package:oafe/setting/oafe_preset.dart';

class QRCodeReader extends StatelessWidget {
  const QRCodeReader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      backgroundColor: OafePreset.MainColor,
    );
  }
}
