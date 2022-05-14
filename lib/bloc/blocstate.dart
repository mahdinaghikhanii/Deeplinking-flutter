import 'package:deeplink_flutter/module/theme.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class BlocState {}

class Initial extends BlocState {}

class Loading extends BlocState {}

class ThemeState extends BlocState {
  final AppTheme appTheme;
  ThemeState(this.appTheme);
}
