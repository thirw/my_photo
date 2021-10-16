import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  final baseUrl = "https://fyi-photo-api.herokuapp.com/api";

  Future getAllPhotos(String path) async {
    try {
      final url = Uri.parse(baseUrl + path);
      final response = await http.get(url);
      return response;
    } catch (error) {
      print(error);
    }
  }

  Future getPhotoByMemberId(String path) async {
    try {
      final url = Uri.parse(baseUrl + path);
      final response = await http.get(url);
      return response;
    } catch (error) {
      print(error);
    }
  }
  Future onSignIn(String path, Map<String, String> data) async {
    try {
      final url = Uri.parse(baseUrl + path);
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );
      return response;
    } catch (error) {
      print(error);
    }
  }

  Future onCreateMember(
    String path,
    Map<String, String> data,
  ) async {
    try {
      final url = Uri.parse(baseUrl + path);
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );
      return response;
    } catch (error) {
      print(error);
    }
  }

  Future onUploadPhotos(String path, dynamic data) async {
    try {
      Dio dio = new Dio();
      final String url = baseUrl + path;
      final response = dio.post(url,
          data: data,
          options: Options(
            method: 'POST',
            responseType: ResponseType.json,
          ));
      return response;
    } catch (error) {
      print(error);
    }
  }
}
