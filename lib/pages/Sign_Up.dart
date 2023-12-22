import 'package:flutter/material.dart';

import '../widgets/prosesaccount.dart';

class Sgup extends StatefulWidget {
  const Sgup({super.key});

  @override
  State<Sgup> createState() => _SgupState();
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: const Color.fromARGB(255, 0, 88, 184),
  minimumSize: Size(70, 20),
  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);
class _SgupState extends State<Sgup> {
   TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool passwordMismatch = false;
  bool usernameError = false;
  bool emailError = false;
  bool passwordError = false;
  bool _obscureText = true;
  bool _obscureText1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Create an",
                              style: TextStyle(
                                fontFamily: "Montsserat-Bold",
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Account",
                              style: TextStyle(
                                fontFamily: "Montsserat-Bold",
                                fontSize: 40,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 28, left: 20, right: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(243, 243, 243, 243),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(180, 180, 180, 180), width: 2),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 280,
                    child: TextFormField(
                       controller: emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                          weight: 20,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
               if (emailError)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Email tidak boleh kosong',
                      style: TextStyle(color: Colors.red,decoration: TextDecoration.underline,fontSize: 12),
                    ),
                  ),
                ],
              ),
            Container(
              margin: EdgeInsets.only(top: 18, left: 20, right: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(243, 243, 243, 243),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(180, 180, 180, 180), width: 2),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 280,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                          weight: 20,
                        ),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
               if (usernameError)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Username tidak boleh kosong',
                      style: TextStyle(color: Colors.red,decoration: TextDecoration.underline,fontSize: 12),
                    ),
                  ),
                ],
              ),
             Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(243, 243, 243, 243),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(180, 180, 180, 180), width: 2),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.key,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(width: 20), // Sesuaikan jarak antara ikon dan input
                  Expanded(
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        suffixIcon: GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 20), // Sesuaikan margin ikon
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
               if (passwordError)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Password tidak boleh kosong',
                      style: TextStyle(color: Colors.red,decoration: TextDecoration.underline,fontSize: 12),
                    ),
                  ),
                ],
              ),
                Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(243, 243, 243, 243),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(180, 180, 180, 180), width: 2),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.key,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(width: 20), // Sesuaikan jarak antara ikon dan input
                  Expanded(
                    child: TextFormField(
                        controller: confirmPasswordController,
                      obscureText: _obscureText1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                       
                        suffixIcon: GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 20), // Sesuaikan margin ikon
                            child: Icon(
                              _obscureText1
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _obscureText1 = !_obscureText1;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
               if (passwordMismatch)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Password Salah',
                      style: TextStyle(color: Colors.red,decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      style: raisedButtonStyle,
                     onPressed: () {
    setState(() {
      usernameError = usernameController.text.isEmpty;
      emailError = emailController.text.isEmpty;
      passwordError = passwordController.text.isEmpty;
      passwordMismatch =
          passwordController.text != confirmPasswordController.text;

      if (usernameError || emailError || passwordError || passwordMismatch) {
        return;
      }

      bool accountCreated = AccountManager.createAccount(
        usernameController.text,
        emailController.text,
        passwordController.text,
        '***',
        '',
        '',
        '',
      );

      if (accountCreated) {
        print('Account created successfully');
        Navigator.pop(context); // Kembali ke halaman login setelah berhasil membuat akun
      } else {
        print('Username or email already exists');
      }
    });
  },
                      child: Text(
                        'Create Account',
                        style: TextStyle(fontSize: 20),
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    '- OR Continue With -',
                    style: TextStyle(
                        fontSize: 13, fontFamily: "Montsserat-Medium"),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset("images/Buttons.png"),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'I Already Have an Account',
                      style: TextStyle(
                          fontFamily: "Montsserat-Regular", fontSize: 14),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Hero(
                      tag: 'hero-rectangle',
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: "Montsserat-Semi",
                            decoration: TextDecoration.underline,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}