import 'package:ecomerce_app/pages/Getstarted.dart';
import 'package:ecomerce_app/pages/Homepage.dart';
import 'package:ecomerce_app/pages/Sign_Up.dart';
import 'package:flutter/material.dart';

import '../widgets/prosesaccount.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: const Color.fromARGB(255, 0, 88, 184),
  minimumSize: Size(70, 20),
  padding: EdgeInsets.symmetric(horizontal: 155, vertical: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);

class _InputState extends State<Input> {
  bool _obscureText = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hasAccount = false;
  bool usernameError = false;
  bool passwordError = false;
  String notification = '';

  bool usernameInvalid = false;
  bool passwordInvalid = false;

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
                              "Welcome",
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
                              "SmartVest!",
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
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
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
                  if (!hasAccount)
                    Container(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.person,
                            color: Colors.black,
                            weight: 20,
                          ),
                          hintText: 'Email Or Username',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (usernameError || usernameInvalid)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      usernameInvalid
                          ? 'Username Anda salah/belum membuat akun'
                          : 'Username tidak boleh kosong',
                      style: TextStyle(color: Colors.red, decoration: TextDecoration.underline),
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
                  SizedBox(width: 20),
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
                            margin: EdgeInsets.only(left: 20),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (passwordError || passwordInvalid)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      passwordInvalid
                          ? 'Password Anda salah'
                          : 'Password tidak boleh kosong',
                      style: TextStyle(color: Colors.red, decoration: TextDecoration.underline),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (notification.isNotEmpty)
                  Text(
                    notification,
                    style: TextStyle(color: Colors.red, decoration: TextDecoration.underline),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                      style: raisedButtonStyle,
                     onPressed: () {
                setState(() {
                  usernameError = usernameController.text.isEmpty && !hasAccount;
                  passwordError = passwordController.text.isEmpty;

                  if (usernameError || passwordError) {
                    notification = 'Username/Email and password cannot be empty';
                    return;
                  }

                  bool loggedIn = false;
                  if (hasAccount) {
                    loggedIn = AccountManager.loginWithEmail(
                      usernameController.text,
                      passwordController.text,
                    );
                  } else {
                    loggedIn = AccountManager.login(
                      usernameController.text,
                      passwordController.text,
                    );
                  }

                  if (loggedIn) {
                    print('Login successful');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Gst(
                          username: usernameController.text,
                          email: AccountManager.accounts
                              .firstWhere((account) =>
                                  account.username == usernameController.text)
                              .email, // Ambil email dari akun yang sesuai
                          password: passwordController.text, // Sertakan nilai password
                        ),
                      ),
                    );
                  } else {
                    notification = 'Username/Email or password is incorrect';
                  }
                });
              },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
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
                      'Create An Account',
                      style: TextStyle(
                          fontFamily: "Montsserat-Regular", fontSize: 14),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sgup(),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'hero-rectangle',
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          'Sign Up',
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
            )
          ],
        ),
      ),
    );
  }
}
