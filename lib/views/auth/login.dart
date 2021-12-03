import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../templates/home_template_view.dart';
import '../../core/providers.dart';
import 'signup.dart';

class LoginPage extends ConsumerWidget {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final auth = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Appwrite Login'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const SizedBox(height: 20.0),
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
                child: Text("Login"),
                onPressed: () async {
                  final res = await auth.loginWithEmailAndPassword(_email.text, _password.text);
                  if (res) {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => HomeTemplateView()));
                  }
                },
              ),
            ),
            const SizedBox(height: 20.0),
            TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => SignupPage())),
                child: Text("Create account"))
          ],
        ),
      ),
    );
  }
}
