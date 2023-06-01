import 'package:athaan/features/home/data/models/athaan_model.dart';
import 'package:athaan/features/home/data/services/athaan_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewModel {
  late String cityName;
  late String fajr;
  late String sunrise;
  late String dhuhr;
  late String asr;
  late String maghrib;
  late String isha;
  late AthaanModel athaanModel;
  AthaanService athaanService = AthaanService();
}
