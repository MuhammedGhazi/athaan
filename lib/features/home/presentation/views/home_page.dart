import 'package:athaan/core/athaan_cubit/athaan_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var thData = BlocProvider.of<AthaanCubit>(context).athaanModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Athaan App"),
      ),
      body: BlocBuilder<AthaanCubit, AthaanState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CustomTextField(
              //   hintName: "Enter the Country Name",
              // ),
              TextField(
                onSubmitted: (value) {
                  BlocProvider.of<AthaanCubit>(context)
                      .getDataAthaan(cityName: value);
                  //  print(BlocProvider.of<AthaanCubit>(context).athaanModel!.asr);
                },
              ),

              Column(
                children: state is AthaanLoading
                    ? [const CircularProgressIndicator()]
                    : state is AthaanSuccess
                        ? [
                            Text(
                                "fajer: ${BlocProvider.of<AthaanCubit>(context).athaanModel!.fajr} "),
                            Text(
                                "Shorouq:${BlocProvider.of<AthaanCubit>(context).athaanModel!.sunrise} "),
                            Text(
                                "Duhour:${BlocProvider.of<AthaanCubit>(context).athaanModel!.dhuhr}  "),
                            Text(
                                "Aser:${BlocProvider.of<AthaanCubit>(context).athaanModel!.asr}  "),
                            Text(
                                "Maghreb:${BlocProvider.of<AthaanCubit>(context).athaanModel!.maghrib} "),
                            Text(
                                "Eshaa:${BlocProvider.of<AthaanCubit>(context).athaanModel!.isha} "),
                          ]
                        : [],
              ),
            ],
          );
        },
      ),
    );
  }
}
