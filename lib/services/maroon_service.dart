import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:mobileutp/models/maroon_model.dart';

class MaroonService {
  String baseUrl = 'https://prak-labkom-mobpro.000webhostapp.com/api/maroons';

  Future<List<MaroonModel>> getMaroon() async {
    var url = Uri.parse(baseUrl);

    var res = await http.get(url);

    List? data = json.decode(res.body);
    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => MaroonModel.fromJson(e)).toList();
    }
  }
}
