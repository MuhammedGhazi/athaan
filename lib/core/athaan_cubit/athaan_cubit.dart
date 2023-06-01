import 'package:athaan/features/home/data/models/athaan_model.dart';
import 'package:athaan/features/home/data/services/athaan_service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'athaan_state.dart';

class AthaanCubit extends Cubit<AthaanState> {
  AthaanModel? athaanModel;
  AthaanService athaanService;

  AthaanCubit(this.athaanService) : super(AthaanInitial());
  void getDataAthaan({required String cityName}) async {
    emit(AthaanLoading());
    try {
      athaanModel = await athaanService.getAthaanModel(cityName: cityName);
      emit(AthaanSuccess());

      print(athaanModel!.asr);
    } catch (e) {
      print(e);
      emit(AthaanFailure());
    }
  }
}
