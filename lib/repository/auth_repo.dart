import 'package:dental/model/register_model.dart';
import 'package:localstorage/localstorage.dart';
import '../model/doctor.dart';
import '../model/login_model.dart';
import '../model/patient_list.dart';
import '../values.dart';

class ApiService {
  final LocalStorage storage = LocalStorage('kirthigaStorage');

  final Dio _dio = Dio();

//register
  Future<RegisterationModel> registerationFetch(registerJson) async {
    try {
      final response = await _dio.post(
          AuthEndPoints().baseUrl + AuthEndPoints().patientRegistaration,
          data: registerJson);
      print(response);
      print(response.statusCode);
      print(registerJson);
      if (response.statusCode == 200) {
        print(response.data);

        ///data successfully
        return RegisterationModel.fromJson(response.data);
        // var result = jsonDecode(response.data);
        // register_model =  register_model.fromjson(result);
      } else {
        throw Exception('failed data');
      }
    } catch (error) {
      print(error);
      throw Exception('Failed to fetch data');
    }
  }

  //login
  Future<Loginmodel> loginFetch(loginJson) async {
    try {
      final response = await _dio.post(
          AuthEndPoints().baseUrl + AuthEndPoints().patientLogin,
          data: loginJson);
      print(response);
      print(response.statusCode);
      print(loginJson);
      if (response.statusCode == 200) {
        print(response.data);

        ///data successfully
        return Loginmodel.fromJson(response.data);
        // var result = jsonDecode(response.data);
        // register_model =  register_model.fromjson(result);
      } else {
        throw Exception('failed data');
      }
    } catch (error) {
      print(error);
      throw Exception('Failed to fetch data');
    }
  }

  //patienlist
  Future<patientmodel> fetchpatient() async {
    _dio.options.headers['Authorization'] =
        'Bearer ${storage.getItem('token')}';
    // try {

    final response = await _dio.get(
      AuthEndPoints().baseUrl + AuthEndPoints().patient_list,
    );
    print(AuthEndPoints().baseUrl + AuthEndPoints().patient_list);
    if (response.statusCode == 200) {
      print(response.data);
      return patientmodel.fromJson(response.data);
    } else {
      throw Exception('falied data');
    }
    // } catch (error) {
    //   throw Exception('failed to fetch data');
    // }
  }

  //docorlist
  Future<doctormodel> doctorfetch() async {
    _dio.options.headers['Authorization'] =
        'Bearer ${storage.getItem('token')}';
    final response =
        await _dio.get(AuthEndPoints().baseUrl + AuthEndPoints().doctor_list);
    print('response');
    print(response);
    if (response.statusCode == 200) {
      print(response.data);
      print('boopathi1');
      return doctormodel.fromJson(response.data);
    } else {
      throw Exception('failed data');
    }
  }
}
