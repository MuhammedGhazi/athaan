//import 'dart:convert';

import 'package:athaan/features/home/data/models/athaan_model.dart';
import 'package:dio/dio.dart';

//import 'package:http/http.dart' as http;

class AthaanService {
  AthaanModel? athaanModel;

  //Dio Method
  Future<AthaanModel> getAthaanModel({required String cityName}) async {
    var resopnse = await Dio().get(
        "https://api.aladhan.com/v1/calendarByCity/2023/5?city=$cityName&country=Syria&method=2");

    athaanModel = AthaanModel.fromJson(resopnse.data);
    return athaanModel!;
  }

  //http method..
  // Future<AthaanModel>  getAthaanModel({String cityName = "aleppo"}) async {
  //   try {
  //     Uri url = Uri.parse(
  //         "https://api.aladhan.com/v1/calendarByCity/2023/5?city=$cityName&country=Syria&method=2");
  //     http.Response response = await http.get(url);
  //     Map<String, dynamic> jsonData = jsonDecode(response.body);
  //     athaanModel = AthaanModel.fromJson(jsonData);

  //   } catch (e) {
  //     print(e);
  //   }
  //   return athaanModel!;
  // }
}
