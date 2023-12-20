import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    username: '',
    email: '',
    password: '',
  ));
}

class MyApp extends StatelessWidget {
  final String username;
  final String email;
  final String password;

  MyApp({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Prfr(
        username: username,
        email: email,
        password: password,
      ),
    );
  }
}

class Prfr extends StatefulWidget {
  final String username;
  final String email;
  final String password;

  Prfr({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  State<Prfr> createState() => _PrfrState();
}

class _PrfrState extends State<Prfr> {
  bool _obscureText = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    nameController.text = widget.username;
    emailController.text = widget.email;
    passwordController.text = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Color.fromARGB(255, 8, 8, 8),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'images/profile.png'), // Ganti dengan path gambar Anda
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 70, left: 25),
                        child: Text(
                          "Personal Details",
                          style: TextStyle(
                              fontFamily: 'Montsserat-Semi', fontSize: 22),
                        )),
                  ],
                ),
                // ini adalah row untuk email
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 25),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: 'Montsserat-Medium', fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 54,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(243, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color.fromARGB(180, 180, 180, 180),
                            width: 2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 329,
                            child: TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '-----',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 25),
                      child: Text(
                        "Username",
                        style: TextStyle(
                            fontFamily: 'Montsserat-Medium', fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 54,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(243, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color.fromARGB(180, 180, 180, 180),
                            width: 2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 329,
                            child: TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Nopalsadiq',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Text('Password'),
                    )
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
                      SizedBox(
                          width: 20), // Sesuaikan jarak antara ikon dan input
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
