import 'package:demo_lang/l10n/l10n.dart';
import 'package:demo_lang/pages/local_app_page.dart';
import 'package:demo_lang/pages/local_system_page.dart';
import 'package:demo_lang/provider/local_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocalProvider(),
      builder: (context, build) {
        final provider = Provider.of<LocalProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: provider.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          home: const MainPage(),
        );
      });
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const LocalSystemPage(),
      const LocalizationAppPage(),
    ];
    return Scaffold(
      bottomNavigationBar: buildBottomBar(),
      body: tabs[selectedIndex],
    );
  }

  Widget buildBottomBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.pink.shade200,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: selectedIndex,
      onTap: (int index) => setState(() => selectedIndex = index),
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 28,
          ),
          label: 'Localization Apps ',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.language_outlined, size: 28),
          label: 'Localization System ',
        ),
      ],
    );
  }
}
