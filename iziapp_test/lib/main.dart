import 'package:flutter/material.dart';
import 'package:iziapp_test/controllers/route_controller.dart';
import 'package:iziapp_test/theme.dart';
import 'package:iziapp_test/views/home_screen_view.dart';

void main() {
  runApp(IziApp());
}

class IziApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RouteController _controller = RouteController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Izi App',
      theme: lightThemeData(context),
      themeMode: ThemeMode.light,
      routes: _controller.pageRoutes,
      home: HomeScreen(),
    );
  }
}