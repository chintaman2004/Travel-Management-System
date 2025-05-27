import 'dart:io';
import 'dart:convert';

class Storage {
  static void save(String fileName, List<Map<String, dynamic>> data) {
    File file = File(fileName);
    file.writeAsStringSync(jsonEncode(data));
  }

  static List<Map<String, dynamic>> load(String fileName) {
    File file = File(fileName);
    if (!file.existsSync()) {
      return <Map<String, dynamic>>[];
    }
    String content = file.readAsStringSync();
    List<dynamic> jsonData = jsonDecode(content);
    return List<Map<String, dynamic>>.from(jsonData);
  }
}
