import 'package:flutter/material.dart';
import 'package:localization_sample/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.login_screen),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.personal_information,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                label: Text(AppLocalizations.of(context)!.login_name),
                hintText: AppLocalizations.of(context)!.name_hint,
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                label: Text(AppLocalizations.of(context)!.email),
                hintText: AppLocalizations.of(context)!.email_hint,
              ),
            ),
            TextField(
              controller: birthDateController,
              decoration: InputDecoration(
                label: Text(AppLocalizations.of(context)!.date_of_birth),
                hintText: AppLocalizations.of(context)!.date_of_birth_hint,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(AppLocalizations.of(context)!.submit_info),
              onPressed: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: Text(AppLocalizations.of(context)!.go_to_home_screen),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                    (Route<dynamic> route) => false);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: Text(AppLocalizations.of(context)!.about_us),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(AppLocalizations.of(context)!.settings),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
