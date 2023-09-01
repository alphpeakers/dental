import 'dart:convert';

import 'package:dental/controller/checkbox_controller.dart';
import 'package:dental/controller/login_controller.dart';
import 'package:dental/model/register_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/register_controller.dart';
import '../Home/home.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();

  //password visiblity
  bool _obscureText = true;

  // Regular expression pattern for email validation
  final String _emailPattern =
      r'^[\w-]+(\.[\w-]+)*@([a-z0-9A-Z-]+\.)+[a-zA-Z]{2,7}$';

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  RegisterationController registerationController =
      Get.put(RegisterationController());

  final CheckboxController checkboxcontroller = Get.put(CheckboxController());

  // LoginController loginController = Get.put(LoginController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Patient Registration',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'please signup into the continue',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      //name
                      TextFormField(
                        controller: registerationController.nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the Name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Name',
                            labelText: 'name'),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///surname
                      TextFormField(
                        controller: registerationController.surnameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the Name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'surname',
                            labelText: 'surname'),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///phonenumber
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller:
                            registerationController.phonenumberController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the phonenumber';
                          } else if (value.length > 10) {
                            return 'please enter the correct number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'phonenumber',
                            labelText: 'phonenumber'),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///dob
                      TextFormField(
                        controller:
                            registerationController.dateofbirthController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the date of birth';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'date of birth',
                            labelText: 'date of birth'),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///age
                      TextFormField(
                        controller: registerationController.ageController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the age';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'age',
                            labelText: 'age'),
                      ),
                      SizedBox(height: 10),

                      ///gender
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('gender : '.toUpperCase()),
                            SizedBox(width: 10),
                            Text('male'),
                            Checkbox(
                              value: checkboxcontroller.isCheckedmale.value,
                              onChanged: (newValue) {
                                checkboxcontroller.isCheckedmale.value =
                                    newValue!;
                                checkboxcontroller.isCheckedfemale.value =
                                    !newValue;
                                // if (newValue) {
                                //   checkboxcontroller.isCheckedfemale.value =
                                //       false;
                                // }
                              },
                            ),
                            SizedBox(width: 10),
                            Text('Female'),
                            Checkbox(
                              value: !checkboxcontroller.isCheckedmale.value,
                              onChanged: (newValue) {
                                checkboxcontroller.isCheckedfemale.value =
                                    newValue!;
                                checkboxcontroller.isCheckedmale.value =
                                    newValue;
                                // if (newValue) {
                                //   checkboxcontroller.isCheckedmale.value =
                                //       false;
                                // }
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///profession
                      TextFormField(
                        controller:
                            registerationController.professionController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the profession';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'profession',
                            labelText: 'profession'),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///Address
                      TextFormField(
                        controller: registerationController.addressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the adress';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'address',
                            labelText: 'address'),
                      ),
                      SizedBox(height: 10),

                      ///primary contact name
                      TextFormField(
                        controller: registerationController.primaryController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the primary contact name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'primary contact name',
                            labelText: 'primary contact name'),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: registerationController.emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the Email';
                          } else if (!RegExp(_emailPattern).hasMatch(value)) {
                            return 'Please enter the correct mail';
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.mail_outline),
                            hintText: 'E mail',
                            labelText: 'e-mail'),
                      ),
                      SizedBox(height: 10),

                      ///Relation ship
                      TextFormField(
                        controller: registerationController.relationController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the relationship';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'relationship',
                            labelText: 'relationship'),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///contact mobile
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: registerationController.contactController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the contact mobile';
                          } else if (value.length > 10) {
                            return 'please correct number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'contact mobile',
                            labelText: 'contact mobile'),
                      ),
                      SizedBox(height: 10),

                      ///password
                      TextFormField(
                        obscureText: _obscureText,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the password';
                          } else if (value.length > 8) {
                            return 'Password should not exceed 8 characters';
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          border: UnderlineInputBorder(),
                          hintText: 'password',
                          labelText: 'password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      SizedBox(height: 10),
                      Obx(() => Column(
                            children: [
                              Checkbox(
                                  value: checkboxcontroller.isChecked1.value,
                                  onChanged: (newValue) {
                                    checkboxcontroller.isChecked1.value =
                                        newValue!;
                                  }),
                              Checkbox(
                                  value: checkboxcontroller.isChecked2.value,
                                  onChanged: (newValue) {
                                    checkboxcontroller.isChecked2.value =
                                        newValue!;
                                  }),
                              Checkbox(
                                  value: checkboxcontroller.isChecked3.value,
                                  onChanged: (newValue) {
                                    checkboxcontroller.isChecked3.value =
                                        newValue!;
                                  }),
                              Checkbox(
                                  value: checkboxcontroller.isChecked4.value,
                                  onChanged: (newValue) {
                                    checkboxcontroller.isChecked4.value =
                                        newValue!;
                                  }),
                              Checkbox(
                                  value: checkboxcontroller.isChecked5.value,
                                  onChanged: (newValue) {
                                    checkboxcontroller.isChecked5.value =
                                        newValue!;
                                  })
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: MaterialButton(
                      color: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Sign up'),
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          if (checkboxcontroller.areAllChecked()) {
                            var registerJson = jsonEncode({
                              "first_name": registerationController
                                  .nameController.text
                                  .toString(),
                              "surname": registerationController
                                  .surnameController.text
                                  .toString(),
                              "email": registerationController
                                  .emailController.text
                                  .toString(),
                              "phone": '7305007930' // registerationController
                                  // .phonenumberController.text
                                  .toString(),
                              "dob": registerationController
                                  .dateofbirthController.text
                                  .toString(),
                              "age": registerationController.ageController.text
                                  .toString(),
                              "gender": checkboxcontroller.isCheckedmale.value,
                              "profession": registerationController
                                  .professionController.text
                                  .toString(),
                              "primary_contact_name": registerationController
                                  .primaryController.text
                                  .toString(),
                              "relationship": registerationController
                                  .relationController.text
                                  .toString(),
                              "contact_mobile": registerationController
                                  .contactController.text
                                  .toString(),
                              "address": registerationController
                                  .addressController.text
                                  .toString(),
                              "check1": checkboxcontroller.isChecked1.value,
                              "check2": checkboxcontroller.isChecked2.value,
                              "check3": checkboxcontroller.isChecked3.value,
                              "check4": checkboxcontroller.isChecked4.value,
                              "check5": checkboxcontroller.isChecked5.value
                            });
                            print(registerJson);
                            final registerResponse =
                                await registerationController
                                    .registerationFunction(registerJson);
                            print(registerResponse.status);
                            if (registerResponse.status == true) {
                              Get.to(Mainpage());
                            } else {
                              Get.snackbar(
                                'Register',
                                'Already Registered',
                                snackPosition: SnackPosition.BOTTOM,
                              );
                            }
                            // All checkboxes are checked, proceed with action
                          } else {
                            // print(
                            Get.snackbar('Checkbox', 'Please enter the check');
                            //     'Not all checkboxes are checked, show error message');
                            // Not all checkboxes are checked, show error message
                          }
                          // If the form is valid, trigger the registration process

                          // if(registerResponse)
                          // if (registrationSuccessful) {
                          //   Get.to(HomePage);
                          // }
                        }
                      }
                      // if (formKey.currentState!.validate()) {
                      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      //       content: Text('Form validated Succesfull')));
                      //   Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => Mainpage()),
                      //   );
                      // } else {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //       SnackBar(content: Text('Error form')));
                      // }

                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
