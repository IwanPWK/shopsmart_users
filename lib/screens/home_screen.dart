import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../widgets/subtitle_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SubtitleTextWidget(label: 'Hello World'),
            const SubtitleTextWidget(label: 'Test'),
            const SubtitleTextWidget(label: 'Looool'),
            ElevatedButton(onPressed: () {}, child: const Text('Hello World')),
            SwitchListTile(
                title: Text(themeProvider.getIsDarkTheme
                    ? 'Dark Theme'
                    : 'Light Theme'),
                value: themeProvider.getIsDarkTheme,
                onChanged: (value) {
                  themeProvider.setDarkTheme(themeValue: value);
                  print('Theme state ${themeProvider.getIsDarkTheme}');
                })
          ],
        ),
      ),
    );
  }
}
