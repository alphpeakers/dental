import 'package:dental/model/patient_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/checkbox_controller.dart';

class patient_page extends StatefulWidget {
  const patient_page({super.key});

  @override
  State<patient_page> createState() => _patient_pageState();
}

class _patient_pageState extends State<patient_page> {
  @override
  Widget build(BuildContext context) {
    print('object');
    final PatientlistController _patientlistcontroller =
        Get.put(PatientlistController());
    _patientlistcontroller.patientFunction();
    // _patientlistcontroller.patientlist =
    //     _patientlistcontroller.patientFunction();
    // var response = _patientlistcontroller.patientFunction();
    // print(response);

    return Scaffold(
      appBar: AppBar(
        title: Text('patient list'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  itemCount: _patientlistcontroller.patientlist.length,
                  itemBuilder: (context, index) {
                    print(_patientlistcontroller.patientlist[index]);
                    return patientdetail(
                        productwind: _patientlistcontroller.patientlist[index],
                        productssl: _patientlistcontroller,
                        index: index);
                  },
                ))
          ],
        ),
      ),
    );
  }

  Widget patientdetail(
      {required productwind,
      required PatientlistController productssl,
      required int index}) {
    return ListTile(
      title: Text(productwind.firstName.toString()),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(productwind.email.toString()),
          Text(productwind.phone.toString()),
        ],
      ),
      leading: CircleAvatar(
        child: Text(productwind.id.toString()),
      ),
      trailing: Text('status'),
    );
  }
}
