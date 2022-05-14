import 'package:deeplink_flutter/bloc/blocstate.dart';
import 'package:deeplink_flutter/module/theme.dart';
import 'package:deeplink_flutter/screan/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        builder: (_, state) => MaterialApp(
            title: 'Flutter Demo',
            theme: appThemeData[
                state is ThemeState ? state.appTheme : AppTheme.light],
            home: const Home()));
  }
}
