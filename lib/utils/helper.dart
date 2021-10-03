import 'package:intl/intl.dart';

class Helper {

  bool emailValidate(String email)  {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  String dateTimeConvert(String date) {
    DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse(date);
    return DateFormat("dd/MM/yyyy").format(tempDate);
  }
}