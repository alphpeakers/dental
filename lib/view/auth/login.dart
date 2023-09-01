import 'dart:convert';
import 'package:localstorage/localstorage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';
import '../Home/home.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final formKey = GlobalKey<FormState>();
  final LocalStorage storage = LocalStorage('kirthigaStorage');
  LoginController login_controller = Get.put(LoginController());
  //password visiblity
  bool _obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'please sign into the continue',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: login_controller.phonenumbercontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the Mobile number';
                      } else if (value.length > 10) {
                        return 'Please enter the correct Mobile number';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'phone number',
                      filled: true,
                      border: const UnderlineInputBorder(),
                      prefixIcon: const Icon(Icons.phone_android),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: login_controller.passwordcontroller,
                    obscureText: _obscureText,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the password';
                      }
                      //  else if (value.length > 8) {
                      //   return 'Password should not exceed 8 characters';
                      // } 
                      else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      border: UnderlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    elevation: 0,
                    minWidth: 250,
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Login'),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        var loginJson = jsonEncode({
                          "phone": login_controller.phonenumbercontroller.text
                              .toString(),
                          "password": login_controller.passwordcontroller.text
                              .toString()
                        });
                        print(loginJson);
                        final Loginresponse =
                            await login_controller.Loginfunction(loginJson);
                        print(Loginresponse);
                        if (Loginresponse.status == true) {
                          Get.to(HomePage());
                          //local storage
                          storage.setItem('token', Loginresponse.data.token);
                          print(storage.getItem('token'));
                        } else {
                          print('some error show');
                        }
                      }
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      child: Text('Register'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
