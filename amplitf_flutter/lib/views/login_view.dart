import 'package:amplitf_flutter/styles/base_textstyle.dart';
import 'package:amplitf_flutter/widgets/base_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController eMailController = TextEditingController();
  var passwordController = TextEditingController();
  final String logIn = "Log  in";
  final String forgotYourPassword = "Forgot your password";
  final String eMail = "Email";
  final String password = "Password";
  final String eightCharacters = "(8+ characters)";
  final String emailHintext = 'Burak@gmail.com';
  final String passwordHintext = '248585-xg';
  void buttonMethod() {}
  void forgotPasswordMethod() {}
  void backButtonMethod() {
    // ignore: avoid_print
    print("bir önceki sayfaya geçildi.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1e1e1e),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 60), // maybe you can prefer only for bottom.
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: backButtonMethod,
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  BaseTextWidget(
                      text: logIn, style: BaseTextStyle.BaseWhiteText)
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  BaseTextWidget(
                      text: eMail, style: BaseTextStyle.BaseWhiteText),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: BaseTextFieldWidget(
                    eMailController: eMailController,
                    emailHintext: emailHintext),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  BaseTextWidget(
                      text: eMail, style: BaseTextStyle.BaseWhiteText),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: BaseTextFieldWidget(
                    eMailController: passwordController,
                    emailHintext: passwordHintext),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: buttonMethod,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF006eff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    child: BaseTextWidget(
                      text: logIn,
                      style: BaseTextStyle.BaseWhiteText,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: forgotPasswordMethod,
                child: BaseTextWidget(
                  text: forgotYourPassword,
                  style: BaseTextStyle.SmallWhiteText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BaseTextFieldWidget extends StatelessWidget {
  const BaseTextFieldWidget({
    super.key,
    required this.eMailController,
    required this.emailHintext,
  });

  final TextEditingController eMailController;
  final String emailHintext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: eMailController,
      decoration: InputDecoration(
        hintText: emailHintext,
        hintStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
