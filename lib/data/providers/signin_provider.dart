import 'dart:convert';

import 'package:my_photo/data/models/member/member.dart';
import 'package:my_photo/data/network/api_service.dart';

class SignInProvider {
  final ApiServices _apiServices = ApiServices();

  Future onSingIn(Map<String, String> data) async {
    try {
      final response = await _apiServices.onSignIn('/members/signin', data);
      final  res = response!.body;

      final Map<String, dynamic> results =  json.decode(res);
      final Member member = Member.fromJson(results);
      return member;
    } catch (e) {
      print("SignInProvider ===> " + e.toString());
    }
  }
}