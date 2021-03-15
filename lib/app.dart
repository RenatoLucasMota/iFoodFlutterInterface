import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'views/content/content_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IFood Flutter Clone',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: ContentPage(),
    );
  }
}
