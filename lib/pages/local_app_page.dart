import 'package:demo_lang/widget/language_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationAppPage extends StatefulWidget {
  const LocalizationAppPage({Key? key}) : super(key: key);

  @override
  _LocalAppPageState createState() => _LocalAppPageState();
}

class _LocalAppPageState extends State<LocalizationAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MultiLang Demo"),
          actions: [
            LanguagePickerWidget(),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: const TextStyle(fontSize: 36),
              ),
              // Text(
              //   AppLocalizations.of(context)!.hello('John'),
              //   style: const TextStyle(fontSize: 36),
              // ),
            ],
          ),
        ));
  }
}
