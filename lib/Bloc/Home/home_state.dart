part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeData extends HomeState{
  final HomeResponse? homeResponse;

  HomeData({this.homeResponse});
}

class HomeDatax extends HomeState{
  final HomeResponse? homeResponse;

  HomeDatax({this.homeResponse});
}