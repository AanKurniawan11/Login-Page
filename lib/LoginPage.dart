import 'package:flutter/material.dart';
import 'package:login_page/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
              child: Center(
                child: Image.asset('images/logo.jpg'),
              ),
            ),


            Container(
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff3379B5)),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan Email",
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.mail),
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // margin: const EdgeInsets.only(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color (0xff3379B5)),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Lupa Password "),
                          content: const Text("Silakan hubungi administrator atau ikuti petunjuk untuk mereset password."),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey
                    ),
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff3379B5),

                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
                  );
                },
                child: const Text("Login", style: TextStyle(color: Colors.white),),
              ),
            ),
            


               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum Punya Akun?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()),
                        );
                      },
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3379B5),
                        ),
                      ),
                    ),
                  ],
              ),
               ),
          ],
        ),
      ),
    );
  }
}
