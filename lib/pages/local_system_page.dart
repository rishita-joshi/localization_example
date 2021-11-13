import 'package:demo_lang/widget/language_picker.dart';
import 'package:flutter/material.dart';

class LocalSystemPage extends StatefulWidget {
  const LocalSystemPage({Key? key}) : super(key: key);

  @override
  _LocalSystemPageState createState() => _LocalSystemPageState();
}

class _LocalSystemPageState extends State<LocalSystemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          const LanguagePickerWidget(),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
