import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import '../oafe_preset.dart';
import 'login_platform.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  LoginPlatform _loginPlatform = LoginPlatform.none;

  void signInWithKakao() async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();

      OAuthToken token = isInstalled
          ? await UserApi.instance.loginWithKakaoTalk()
          : await UserApi.instance.loginWithKakaoAccount();

      final url = Uri.https('kapi.kakao.com', '/v2/user/me');

      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${token.accessToken}'
        },
      );

      final profileInfo = json.decode(response.body);
      print(profileInfo.toString());

      setState(() {
        _loginPlatform = LoginPlatform.kakao;
      });
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');
    }
  }

  void signOut() async {
    switch (_loginPlatform) {
      case LoginPlatform.facebook:
        break;
      case LoginPlatform.google:
        break;
      case LoginPlatform.kakao:
        await UserApi.instance.logout();
        break;
      case LoginPlatform.naver:
        break;
      case LoginPlatform.apple:
        break;
      case LoginPlatform.none:
        break;
    }

    setState(() {
      _loginPlatform = LoginPlatform.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _loginPlatform != LoginPlatform.none
            ? _logoutButton()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _loginButton(
                    'kakao_logo',
                    signInWithKakao,
                  ),
                ],
              ),
      ),
    );
  }

//login UI-----------------------------------
  Widget _loginButton(String path, VoidCallback onTap) {
    return Card(
      elevation: 5.0,
      child: GestureDetector(
        onTap: onTap,
        child: Image.asset(
          'images/kakao_login_button.png',
          fit: BoxFit.fill,
          scale: 2,
        ),
      ),
    );
  }

//logout UI-----------------------------------
  Widget _logoutButton() {
    return ElevatedButton(
      onPressed: signOut,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          OafePreset.MainColor,
        ),
      ),
      child: const Text('로그아웃'),
    );
  }
}
