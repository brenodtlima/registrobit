import 'package:intl/intl.dart';

class DataFormatting {
  String date() {
    return DateFormat('dd/MM/yyyy').format(DateTime.now());
  }

  String dayOfWeek() {
    String dayOfWeek = DateFormat('EEEE', 'pt_BR').format(DateTime.now());
    return dayOfWeek[0].toUpperCase() + dayOfWeek.substring(1);
  }
}
