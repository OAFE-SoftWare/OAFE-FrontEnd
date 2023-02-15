import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oafe/setting/oafe_preset.dart';

class SettingMainPage extends StatefulWidget {
  const SettingMainPage({Key? key}) : super(key: key);

  @override
  State<SettingMainPage> createState() => _SettingMainPageState();
}

class _SettingMainPageState extends State<SettingMainPage> {
  bool _isNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white24,
        iconTheme: IconThemeData(color: OafePreset.MainColor),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Enable Notifications'),
            trailing: Switch(
              value: _isNotificationEnabled,
              onChanged: (value) {
                setState(() {
                  _isNotificationEnabled = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
