import 'dart:convert';

import 'package:my_photo/data/models/photo/photo.dart';
import 'package:my_photo/data/network/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileProvider {
  Future getPhotosByMemberId() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final memberId = prefs.getInt('memberId').toString();
      List<PhotoById> photosList = [];
      final response = await ApiServices().getAllPhotos('/members/$memberId/photos');
      final jsonList = jsonDecode(response!.body);
      for (final item in jsonList) {
        photosList.add(PhotoById.fromJson(item));
      }
      return photosList;
    } catch (e) {
      print("ProfileProvider error: " + e.toString());
    }
  }
}
