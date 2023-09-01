import 'package:dental/model/doctor.dart';
import 'package:get/get.dart';

import '../model/patient_list.dart';
import '../repository/auth_repo.dart';

class CheckboxController extends GetxController {
  RxBool isChecked1 = false.obs;
  RxBool isChecked2 = false.obs;
  RxBool isChecked3 = false.obs;
  RxBool isChecked4 = false.obs;
  RxBool isChecked5 = false.obs;
  RxBool isCheckedmale = false.obs;
  RxBool isCheckedfemale = false.obs;
  // Add more isChecked variables for additional checkboxes

  bool areAllChecked() {
    return isChecked1.value &&
        isChecked2.value &&
        isChecked3.value &&
        isChecked4.value &&
        isChecked5.value &&
        (isCheckedmale.value || isCheckedfemale.value);
  }
}

//menubar
class MenubarController extends GetxController {
  final menuItems =
      <String>['Dasbord', 'Patient', 'Doctor', 'staff', 'Inventory'].obs;
}

//patient_list
class PatientlistController extends GetxController {
  ApiService _apiService = ApiService();
  RxList patientlist = [].obs;
  RxBool isLoading = false.obs;

  patientFunction() async {
    print('object');
    isLoading.value = true;
    try {
      final response = await _apiService.fetchpatient();
      print('object');
      print(response);
      if (response.status == true) {
        patientlist.value = response.data as List<Data>;
      }
      return response;
    } catch (error) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }
}

class doctorlistController extends GetxController {
  ApiService _apiService = ApiService();
  RxList doctorlis = [].obs;
  RxBool isLoading = false.obs;

  doctorlistfunction() async {
    isLoading.value = true;
    // try {
    final response = await _apiService.doctorfetch();
    print('object');
    print(response);
    if (response.status == true) {
      doctorlis.value = response.data as List<DoctorData>;
      print('sjkadj');
      print(doctorlis.value);
    }
    return response;
    // } catch (error) {
    //   // Handle error
    // } finally {
    //   isLoading.value = false;
    // }
  }
}
