import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../models/user_preferences.dart';
import '../themes/theme_provider.dart';
import '../utils/app_colors.dart';
import '../widgets/language_selector.dart';

class UserPreferencesPage extends StatefulWidget {
  const UserPreferencesPage({super.key});

  @override
  State<UserPreferencesPage> createState() => _UserPreferencesPageState();
}

class _UserPreferencesPageState extends State<UserPreferencesPage> {
  @override
  Widget build(BuildContext context) {
    return getBody(context);
  }

  Widget getBody(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      children: [
        Hero(
          tag: 'logoTag',
          child: Image.asset(
            'assets/images/Logo_small.png',
            width: 300,
            height: 300,
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(AppLocalizations.of(context)!.darkMode),
            Switch.adaptive(
              value: UserPreferences().isDarkModeOn,
              onChanged: (value) {
                themeProvider.toggleTheme(isOn: value);
                UserPreferences().isDarkModeOn = value;
              },
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: greenButtonColor),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (_) => const LanguageSelector(),
            );
          },
          child: Text(AppLocalizations.of(context)!.changeLanguage),
        ),
      ],
    );
  }
}
