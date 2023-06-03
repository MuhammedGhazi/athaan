import 'package:athaan/core/athaan_cubit/athaan_cubit.dart';
import 'package:athaan/features/home/data/services/athaan_service.dart';
import 'package:athaan/features/home/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AthaanCubit(AthaanService()),
    child: AthaanApp(),
  ));
}

class AthaanApp extends StatelessWidget {
  const AthaanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Athaan Times',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
