import 'package:flutter/material.dart';
import 'package:my_photo/data/models/photo/photo.dart';
import 'package:my_photo/data/providers/profile_provider.dart';
import 'package:my_photo/modules/signin/view/signin_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController {
  final ProfileProvider _profileProvider = ProfileProvider();
  void onSignOut(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('memberId');
    await prefs.setBool('isLoggedIn', false);
    Navigator.of(context).pushNamedAndRemoveUntil(
        SignInView.routeName, (Route<dynamic> route) => false);
  }

  Future getPhotos() async {
    try {
      final List<PhotoById> response = await _profileProvider.getPhotosByMemberId();
      return response;
    } catch (error) {
      print("err: " + error.toString());
    }
  }
}
