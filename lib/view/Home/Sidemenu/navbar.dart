import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/checkbox_controller.dart';
import 'doctor.dart';
import 'patient.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final MenubarController _menubarcontroll = Get.put(MenubarController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: Text("data"),
          accountEmail: null,
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: _menubarcontroll.menuItems.length,
            itemBuilder: (context, index) {
              return patientlist(index);
            })
      ]),
    );
  }

  Widget patientlist(index) {
    print(index);
    return InkWell(
      onTap: () {
        if (index == 1) {
          Get.to(patient_page());
        }else if(index == 2){
            Get.to(MyWidget());
        }
      },
      child: ListTile(
        title: Text(_menubarcontroll.menuItems[index]),
      ),
    );
  }
}
