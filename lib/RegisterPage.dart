import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body:Center (
        child: Column(
          children: [
            Text("Belum Jadi",)
          ],
        ),
      ),
    );
  }
}
