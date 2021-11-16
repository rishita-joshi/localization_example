import 'package:demo_lang/provider/local_provider.dart';
import 'package:demo_lang/widget/language_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalSystemPage extends StatefulWidget {
  const LocalSystemPage({Key? key}) : super(key: key);

  @override
  _LocalSystemPageState createState() => _LocalSystemPageState();
}

class _LocalSystemPageState extends State<LocalSystemPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      final provider = Provider.of<LocalProvider>(context, listen: false);

      provider.clearLocale();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Localization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LanguagePickerWidget(),
            const SizedBox(height: 32),
            Text(
              AppLocalizations.of(context)!.language,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.hello("Rishita 💫"),
              style: const TextStyle(fontSize: 36),
            ),
            Text(
              AppLocalizations.of(context)!.lastnamemethod("Joshi 💫"),
              style: const TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
