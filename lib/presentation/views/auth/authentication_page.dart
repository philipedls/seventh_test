import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import './constants/constants.dart';

import './widgets/widgets.dart';
import 'authentication_store.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final _store = AuthenticationStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: -10.0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.40,
                child: Lottie.asset(BACKGROUND_ANIMATION_FILE_PATH),
              ),
            ),
            Form(
              key: _store.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TITLE_PAGE,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Divider(
                    height: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.86,
                    child: AuthFormField(
                      controller: _store.usernameController,
                      hint: USER_HINT,
                      inputType: TextInputType.text,
                    ),
                  ),
                  Divider(
                    height: MediaQuery.of(context).size.height * 0.03,
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.86,
                    child: AuthFormField(
                      controller: _store.passwordController,
                      hint: PASSWORD_HINT,
                      inputType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                  Divider(
                    height: MediaQuery.of(context).size.height * 0.04,
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.86,
                    height: _store.heigthButton,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor),
                      onPressed: () async {
                        if (_store.formKey.currentState?.validate() == true) {
                          _store.onSignIn(
                            _store.usernameController.text,
                            _store.passwordController.text,
                            context,
                          );
                        }
                      },
                      child: _store.loading
                          ? CircularProgressIndicator(
                              color: Colors.black54,
                            )
                          : Text(
                              BUTTON_TILE,
                              style: Theme.of(context).textTheme.button,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
