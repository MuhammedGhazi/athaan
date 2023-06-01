part of 'athaan_cubit.dart';

@immutable
abstract class AthaanState {}

class AthaanInitial extends AthaanState {}

class AthaanLoading extends AthaanState {}

class AthaanSuccess extends AthaanState {}

class AthaanFailure extends AthaanState {}
