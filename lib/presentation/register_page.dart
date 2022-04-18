//import 'dart:developer';
import 'package:booking_app/presentation/models/user.dart';
import 'package:booking_app/presentation/user_info_page.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/components.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _scafoldKey = GlobalKey<ScaffoldState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _cashController = TextEditingController();
  final _ageController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmController = TextEditingController();
  
  final List<String> countries = ['Ukraine', 'Poland', 'Germany', 'France', 'Great Britain'];
  String selectedCountry = 'Ukraine';

  bool _hidePass = true;

  User newUser = User();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _cashController.dispose();
    _ageController.dispose();
    _passController.dispose();
    _confirmController.dispose();
  }

  void _fieldFocusChange() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
        title: Text(headerInRegisterForm),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Full Name*',
                hintText: 'What do people call you?',
                prefixIcon: const Icon(Icons.person),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _nameController.clear();
                  },
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0)),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              onSaved: (value) => newUser.name = value!,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'phone number',
                hintText: 'Where can we reach you?',
                helperText: 'Phone format: XXX-XXX-XXXX',
                prefixIcon: const Icon(Icons.call),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _phoneController.clear();
                  },
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0)),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              inputFormatters: [
                FilteringTextInputFormatter(RegExp(r'^[()\d -]{1,15}$'),
                    allow: true),
              ],
              onSaved: (value) => newUser.phone = value!,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email Adress',
                hintText: 'Enter a email address',
                icon: const Icon(Icons.mail),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _emailController.clear();
                  },
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _ageController,
              decoration: InputDecoration(
                labelText: 'How old are you?',
                hintText: 'Enter your age',
                icon: const Icon(Icons.event),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _ageController.clear();
                  },
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
              ),
              keyboardType: TextInputType.number,
              maxLength: 2,
              onSaved: (value) => newUser.age = value!,
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.map),
                  labelText: 'County?'),
              items: countries.map((country) {
                return DropdownMenuItem(
                  child: Text(country),
                  value: country,
                );
              }).toList(),
              onChanged: (country) {
                setState(() {
                  selectedCountry = country as String;
                  newUser.country = country;
                });
              },
              value: selectedCountry,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _cashController,
              decoration: InputDecoration(
                labelText: 'Cash',
                hintText: 'How many cash you have?',
                icon: const Icon(Icons.money),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _cashController.clear();
                  },
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passController,
              obscureText: _hidePass,
              maxLength: 8,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                  icon:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                ),
                icon: const Icon(Icons.security),
              ),
              onSaved: (value) => newUser.cash = value!,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _confirmController,
              maxLength: 8,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Confirm the Password',
                icon: const Icon(Icons.border_color),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _passController.clear();
                    _confirmController.clear();
                  },
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _showDialog(name: _nameController.text);
    } else {
      _showMessage(message: 'Form is not valid! Please reviev and correct');
    }
  }

  void _showMessage({required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
        content: Text(
          message,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  void _showDialog({required String name}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Registration successful',
              style: TextStyle(color: Colors.green),
            ),
            content: Text(
              '$name is now a verified registier form',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserInfoPage(
                        userInfo: newUser,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Verified',
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                ),
              )
            ],
          );
        });
  }
}
