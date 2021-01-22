import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:yaru/yaru.dart';

import 'i18n.dart';
import 'welcomepage.dart';
import 'tryorinstallpage.dart';
import 'turnoffrstpage.dart';

void main() {
  runApp(UbuntuDesktopInstallerApp());
}

class UbuntuDesktopInstallerApp extends StatelessWidget {
  final SubiquityClient _client = SubiquityClient();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => UbuntuLocalizations.of(context).appTitle,
      theme: yaruLightTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        UbuntuLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: _client.languagelist.map((t) => t.item1).toList(),
      locale: Locale('en', 'US'),
      home: WelcomePage(client: _client),
      routes: <String, WidgetBuilder>{
        '/tryorinstall': (BuildContext context) =>
            TryOrInstallPage(client: _client),
        '/turnoffrst': (BuildContext context) => TurnOffRSTPage(),
      },
    );
  }
}
