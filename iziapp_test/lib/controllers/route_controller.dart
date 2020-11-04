import 'package:flutter/material.dart';
import 'package:iziapp_test/views/feed_screen_view.dart';
import 'package:iziapp_test/views/home_screen_view.dart';

class RouteController {
  BuildContext context;

  RouteController({this.context});

  Map<String, Widget Function(BuildContext)> pageRoutes =
      <String, WidgetBuilder>{
        '/FeedScreen': (context) => FeedScreen()
      };
}
