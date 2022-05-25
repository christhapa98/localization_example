import 'package:flutter/material.dart';
import 'package:localization_sample/providers/locale_provider.dart';
import 'package:provider/provider.dart';

import '../constants/l10n.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: const Icon(Icons.menu),
          items: L10n.all.map((locale) {
            return DropdownMenuItem(
              child: Text(locale == const Locale('en') ? 'English' : 'Nepali'),
              value: locale,
              onTap: () {
                final provider =
                    Provider.of<LocaleProvider>(context, listen: false);
                provider.setLocale(locale);
              },
            );
          }).toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }
}
