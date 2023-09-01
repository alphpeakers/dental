import 'package:flutter/material.dart';

import 'Sidemenu/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false; // This variable holds the checkbox state

    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Text('Side menu bar'),
      ),
      body: Center(
        child: Text('dasboard')
      ),
    );
  }
}
