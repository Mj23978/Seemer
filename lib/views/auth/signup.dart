import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/providers.dart';
import '../templates/home_template_view.dart';

class SignupPage extends ConsumerWidget {

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final auth = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Appwrite Register'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const SizedBox(height: 20.0),
            TextField(
              controller: _name,
              decoration: InputDecoration(hintText: "name"),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _email,
              decoration: InputDecoration(hintText: "email"),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: ElevatedButton(
                child: Text("Signup"),
                onPressed: () async {
                  final res = await auth.createAccount(_name.text, _email.text, _password.text);
                  if (res) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => HomeTemplateView()));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
