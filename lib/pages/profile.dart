import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    username: '',
    email: '',
    password: '',
    pin: '',
    address: '',
    city: '',
    country: '',
  ));
}

class MyApp extends StatelessWidget {
  final String username;
  final String email;
  final String password;
  final String pin;
  final String address;
  final String city;
  final String country;

  MyApp({
    required this.username,
    required this.email,
    required this.password,
    required this.pin,
    required this.address,
    required this.city,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Prfr(
        username: username,
        email: email,
        password: password,
        pin: pin,
        address: address,
        city: city,
        country: country,
      ),
    );
  }
}

class Prfr extends StatefulWidget {
  final String username;
  final String email;
  final String password;
  final String pin;
  final String address;
  final String city;
  final String country;

  final List<String> genders = ['Male', 'Female', 'Other'];

  Prfr({
    required this.username,
    required this.email,
    required this.password,
    required this.pin,
    required this.address,
    required this.city,
    required this.country,
  });

  @override
  State<Prfr> createState() => _PrfrState();
}

class _PrfrState extends State<Prfr> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: const Color.fromARGB(255, 0, 88, 184),
  minimumSize: Size(70, 20),
  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);
  String selectedGender = ''; // Variable to hold the selected gender

  // Function to update the selected gender
  void _onGenderChanged(String value) {
    setState(() {
      selectedGender = value;
    });
  }

  bool _obscureText = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  bool isEditing = false;
    bool isButtonActive = false;

  @override
  void initState() {
    super.initState();
    selectedGender = widget.genders.isNotEmpty ? widget.genders[0] : '';
    nameController.text = widget.username;
    emailController.text = widget.email;
    passwordController.text = widget.password;
    pinController.text = widget.pin;
    addressController.text = widget.address;
    cityController.text = widget.city;
    countryController.text = widget.country;
    
  }

  @override
  Widget build(BuildContext context) {
     double globalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {  Navigator.pop(
                    context,
                    {
                      'name': nameController.text,
                      'email': emailController.text,
                      'password': passwordController.text,
                      'pin': pinController.text,
                      'address': addressController.text,
                      'city': cityController.text,
                      'country': countryController.text,
                    },
                  );},
                         icon: Icon(Icons.arrow_back_ios,
                          size: 30,
                          color: Color.fromARGB(255, 8, 8, 8)),
                        ),
                       
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                        margin: EdgeInsets.only(top: 10, left: 20, ),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 54,
                        decoration: BoxDecoration(
                         color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(180, 180, 180, 180),
                              width: 2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                            width: (globalWidth / 1.3),
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                    enabled: isEditing,
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
                        margin: EdgeInsets.only(top: 10, left: 20, ),
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        height: 54,
                        decoration: BoxDecoration(
                           color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(180, 180, 180, 180),
                              width: 2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: (globalWidth / 1.3),
                              child: TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                    enabled: isEditing,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  fontFamily: 'Montsserat-Medium', fontSize: 15),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 54,
                        decoration: BoxDecoration(
                          color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(180, 180, 180, 180),
                              width: 2),
                        ),
                        
                        child: Row(
                          children: [
                            SizedBox(
                                width:
                                    5), // Sesuaikan jarak antara ikon dan input
                            Expanded(
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                   
                                  suffixIcon: GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 10), // Sesuaikan margin ikon
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
                                    enabled: isEditing,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25),
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                fontFamily: 'Montsserat-Medium',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 14),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 54,
                        width: double
                            .infinity, // Set the width of the parent container
                        decoration: BoxDecoration(
                           color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromARGB(180, 180, 180, 180),
                            width: 2,
                          ),
                        ),
                        child: DropdownButton<String>(
                          isExpanded:
                              true, // Make the dropdown take up the full width
                          value: selectedGender,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            _onGenderChanged(newValue!);
                          },
                          items: widget.genders
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                                  enabled: isEditing,
                              value: value,
                              child: Text(value),
                            );
                            
                          }).toList(),
                          
                        ),
                      ),
                      
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 25, left: 25),
                          child: Text(
                            "Addres Details",
                            style: TextStyle(
                                fontFamily: 'Montsserat-Semi', fontSize: 20),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25, left: 25),
                            child: Text(
                              'PinCode',
                              style: TextStyle(
                                fontFamily: 'Montsserat-Medium',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                           Container(
                        margin: EdgeInsets.only(top: 10, left: 20),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 54,
                        decoration: BoxDecoration(
                          color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(180, 180, 180, 180),
                              width: 2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                           width: (globalWidth / 1.3),
                              child: TextFormField(
                                controller: pinController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '.....',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                 enabled: isEditing,
                              ),
                            ),
                          ],
                        ),
                      ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                                margin: EdgeInsets.only(top: 25, left: 25),
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                    fontFamily: 'Montsserat-Medium',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                        ],
                      ),
                      Row(
                        children: [
                             Container(
                        margin: EdgeInsets.only(top: 10, left: 20),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 54,
                        decoration: BoxDecoration(
                          color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(180, 180, 180, 180),
                              width: 2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: (globalWidth / 1.3),
                              child: TextFormField(
                                controller: addressController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '....',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                 enabled: isEditing,
                              ),
                            ),
                          ],
                        ),
                      ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                           Row(
                        children: [
                          Container(
                                margin: EdgeInsets.only(top: 25, left: 25),
                                child: Text(
                                  'City',
                                  style: TextStyle(
                                    fontFamily: 'Montsserat-Medium',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                        ],
                      ),
                      Row(
                        children: [
                             Container(
                        margin: EdgeInsets.only(top: 10, left: 20, ),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 54,
                        decoration: BoxDecoration(
                          color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(180, 180, 180, 180),
                              width: 2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: (globalWidth / 1.3),
                              child: TextFormField(
                                controller: cityController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '.....',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                 enabled: isEditing,
                              ),
                            ),
                          ],
                        ),
                      ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                           Row(
                        children: [
                          Container(
                                margin: EdgeInsets.only(top: 25, left: 25),
                                child: Text(
                                  'Country',
                                  style: TextStyle(
                                    fontFamily: 'Montsserat-Medium',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                        ],
                      ),
                      Row(
                        children: [

                             Container(
                        margin: EdgeInsets.only(top: 10, left: 20,),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 54,
                        decoration: BoxDecoration(
                          color: isButtonActive ? const Color.fromARGB(243, 255, 255, 255) : Color.fromARGB(255, 216, 231, 239),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(180, 180, 180, 180),
                              width: 2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                             width: (globalWidth / 1.3),
                              child: TextFormField(
                                controller: countryController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '......',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                 enabled: isEditing,
                              ),
                            ),
                          ],
                        ),
                      ),
                        ],
                      )
                    ],
                  ),
                   isEditing
                  ? Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: raisedButtonStyle,
                        onPressed: () {
                          setState(() {
                            isEditing = false;
                            isButtonActive = false;
                          });
                        },
                        child: Text('Save Changes'),
                      ),
                  )
                  : Container(
                     margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: raisedButtonStyle,
                        onPressed: () {
                          setState(() {
                            isEditing = true;
                            isButtonActive = true;
                          });
                        },
                        child: Text('Change Profile'),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
