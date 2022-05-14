import 'package:deeplink_flutter/bloc/blocstate.dart';
import 'package:deeplink_flutter/module/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeBloc extends Cubit<ThemeState> {
  ThemeBloc() : super(ThemeState(AppTheme.light)) {
    laodTheme();
  }

  void laodTheme() async {
    SharedPreferences _prfs = await SharedPreferences.getInstance();
    String _str = _prfs.getString('theme') ?? "";
    if (_str == "dark") emit(ThemeState(AppTheme.dark));
  }

  void setTheme(AppTheme appTheme) async {
    emit(ThemeState(appTheme));

    SharedPreferences _perf = await SharedPreferences.getInstance();
    _perf.setString('theme', appTheme == AppTheme.dark ? "dark" : "light");
  }
}
