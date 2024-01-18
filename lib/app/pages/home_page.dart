import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final AppStore appStore = Provider.of<AppStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         
            RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              groupValue: appStore.themeMode,
              title: const Text('Light'),
              onChanged: appStore.switchTheme,
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode,
              title: const Text('Dark'),
              onChanged: appStore.switchTheme,
            ),
          ],
        ),
      ),
      
    );
  }
}