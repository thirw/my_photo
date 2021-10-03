import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:my_photo/data/models/photo/photo.dart';
import 'package:my_photo/data/network/api_service.dart';

class HomeProvider {
  Future getImages() async {
    try{
      List<AllPhoto> photosList = [];
      final response = await ApiServices().getAllPhotos('/photos');
      final jsonList = jsonDecode(response!.body);
      for(final item in jsonList){
        photosList.add(AllPhoto.fromJson(item));
      }
      return photosList;
    } catch  (e) {
      print(e);
    }
  }

  Future onUploadImage(FormData data) async {
   try {
     final response = await ApiServices().onUploadPhotos('/photos', data);
     return response;
   } catch (e) {
     print(e);
   }
 }
}