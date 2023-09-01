import 'package:dental/repository/auth_repo.dart';
import 'package:dental/values.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  ApiService _apiService = ApiService(); // Inject ApiService

  RxBool isLoading = false.obs;
  RxString data = ''.obs;

  Loginfunction(loginJson) async {
    isLoading.value = true;
    try {
      final response = await _apiService.loginFetch(loginJson);
      print('BOOPATHI');
      return response;
    } catch (error) {
    } finally {
      isLoading.value = false;
    }
  }

  // Future<void> fetchData() async {
  //   isLoading.value = true;

  //   try {
  //     final response = await _apiService.fetchData();
  //     data.value = response.data.toString();
  //   } catch (error) {
  //     // Handle error
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // Future<void> loginWithEmail() async {
  //   var headers = {'Content-Type': 'application/json'};
  //   try {
  //     var url = Uri.parse(
  //        AuthEndPoints().baseUrl + AuthEndPoints().patientLogin);
  //     Map body = {
  //       'email': emailController.text.trim(),
  //       'password': passwordController.text
  //     };
  //     http.Response response =
  //         await http.post(url, body: jsonEncode(body), headers: headers);

  //     if (response.statusCode == 200) {
  //       final json = jsonDecode(response.body);
  //       if (json['code'] == 0) {
  //         var token = json['data']['Token'];
  //         final SharedPreferences? prefs = await _prefs;
  //         await prefs?.setString('token', token);

  //         emailController.clear();
  //         passwordController.clear();
  //         Get.off( HomePage());
  //       } else if (json['code'] == 1) {
  //         throw jsonDecode(response.body)['message'];
  //       }
  //     } else {
  //       throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
  //     }
  //   } catch (error) {
  //     Get.back();
  //     showDialog(
  //         context: Get.context!,
  //         builder: (context) {
  //           return SimpleDialog(
  //             title: Text('Error'),
  //             contentPadding: EdgeInsets.all(20),
  //             children: [Text(error.toString())],
  //           );
  //         });
  //   }
  // }
}
