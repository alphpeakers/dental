import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../repository/auth_repo.dart';
import '../utils/api_endpoints.dart';
import '../view/Home/home.dart';

class RegisterationController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController dateofbirthController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController relationController = TextEditingController();
  TextEditingController primaryController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  ApiService _apiService = ApiService(); // Inject ApiService

  RxBool isLoading = false.obs;
  RxString data = ''.obs;

  // RegisterationController(ApiService apiService);

  registerationFunction(registerJson) async {
    isLoading.value = true;
    print("Boopathi");
    try {
      final response = await _apiService.registerationFetch(registerJson);
      print("Boopathi");
      print(response);
      return response;
      // data.value = response.data.toString();
    } catch (error) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }
}
