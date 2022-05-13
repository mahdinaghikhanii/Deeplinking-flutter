import 'package:flutter/foundation.dart';

@immutable
abstract class BlocState {}

class Initial extends BlocState {}

class Loading extends BlocState {}

class ThemeStatte extends BlocState {}
