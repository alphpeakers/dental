import 'package:dental/controller/checkbox_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final doctorlistController _doctorcontroll =
        Get.put(doctorlistController());
  var response=  _doctorcontroll.doctorlistfunction();
    print(response);
  
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Doctor'),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() => ListView.builder(
                shrinkWrap: true,
                itemCount: _doctorcontroll.doctorlis.length,
                itemBuilder: (context, index) {
                  print(_doctorcontroll.doctorlis[index]);
                  return doctorl(
                      productdoc: _doctorcontroll.doctorlis[index],
                      productssl: _doctorcontroll,
                      index: index);
                }))
          ],
        ),
      ),
    );
  }

  Widget doctorl(
      {required index,
      required productdoc,
      required doctorlistController productssl}) {
    return ListTile(
      trailing: Text(productdoc.roleId.toString()),
      title: Text('departmentname'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('firstname'), Text("qualification")],
      ),
      leading: Text('gender'),
    );
  }
}
