import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric PopulateCorrectEmailAndPassword() {
  return when2<String, String, FlutterWorld>(
    'I give a valid {string} and {string}',
    (email, password, context) async {
      final emailField = find.byValueKey('emailTextField');
      final passwordField = find.byValueKey('passwordTextField');

      await FlutterDriverUtils.enterText(
          context.world.driver, emailField, 'gearmias@gmail.com');
      await FlutterDriverUtils.enterText(
          context.world.driver, passwordField, '123456');
      await Future.delayed(Duration(seconds: 10));
    },
  );
}

StepDefinitionGeneric ClickLoginButton() {
  return when2<String, int, FlutterWorld>(
    'I click on {string} button {int} times',
    (key, password, context) async {
      final loginButton = find.byValueKey(key);

      await FlutterDriverUtils.tap(context.world.driver, loginButton);
    },
  );
}
