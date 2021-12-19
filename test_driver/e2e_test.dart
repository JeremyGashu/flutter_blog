import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

main() {
  var loginButton = find.byValueKey('loginButton');

  group('counter app', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (driver != null) {
        driver?.close();
      }
    });

    test('clicking login button', () async {
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(loginButton);
    });

    test('entering and validating email and password', () async {
      var emailTextField = find.byValueKey('emailTextField');
      var passwordField = find.byValueKey('passwordTextField');
      var loginButton = find.byValueKey('loginButton');

      //Empty email and password will show errro
      await driver.tap(loginButton);
      await driver.waitFor(find.text('Password cannot be less than 6 chars!'));
      await driver.waitFor(find.text('Please enter valid email address!'));

      //invalid email and password will show error
      await Future.delayed(Duration(seconds: 3));

      await driver.tap(emailTextField);
      await driver.enterText('gearmias');
      await driver.tap(passwordField);
      await driver.enterText('123');
      await driver.tap(loginButton);

      await driver.waitFor(find.text('Password cannot be less than 6 chars!'));
      await driver.waitFor(find.text('Please enter valid email address!'));
      await Future.delayed(Duration(seconds: 3));

      //password less than 6 chars will show error
      await driver.tap(emailTextField);
      await driver.enterText('gearmias@gmail.com');
      await driver.tap(passwordField);
      await driver.enterText('123');
      await driver.tap(loginButton);
      await driver.waitFor(find.text('Password cannot be less than 6 chars!'));
      await Future.delayed(Duration(seconds: 3));

      //invalid email will show an errro
      await driver.tap(emailTextField);
      await driver.enterText('gearmias');
      await driver.tap(passwordField);
      await driver.enterText('123456');
      await driver.tap(loginButton);
      await driver.waitFor(find.text('Please enter valid email address!'));
      await Future.delayed(Duration(seconds: 5));

      //invalid credential
      await driver.tap(emailTextField);
      await driver.enterText('gearmias@gmail.cos');
      await driver.tap(passwordField);
      await driver.enterText('123456');
      await driver.tap(loginButton);
      await driver.waitFor(find.text('Invalid Credential!'));
      await Future.delayed(Duration(seconds: 5));

      //Both correct inputs
      await driver.tap(emailTextField);
      await driver.enterText('gearmias@gmail.com');
      await driver.tap(passwordField);
      await driver.enterText('123456');
      await driver.tap(loginButton);
      await Future.delayed(Duration(seconds: 5));
    });
  });
}
