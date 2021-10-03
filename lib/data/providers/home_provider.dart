import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_photo/data/models/photo/photo.dart';

class HomeProvider {
  Future getImages() async {
    try{
      // mock
      final String mockResponse = await rootBundle.loadString("lib/data/photos.json");
      Photo photoResponse = Photo.fromJson(jsonDecode(mockResponse));
      return photoResponse;
    } catch  (e) {
      print(e);
    }
  }

 void onUploadImage(File image) async {
   try {
     return null;
   } catch (e) {
     print(e);
   }
 }
}