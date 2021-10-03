import 'package:my_photo/data/network/api_service.dart';

class RegisterProvider {
  final ApiServices _apiServices = ApiServices();

  Future onCreateMember(Map<String, String> data) async {
    try {
      final response = await _apiServices.onCreateMember('/members', data);
      final res = response!.body;
      print("ress: " + res.toString());
      return res;
    } catch (e) {
      print("Error provider: " + e.toString());
    }
  }
}
