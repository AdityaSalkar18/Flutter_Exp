import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

void _submitForm() {
  if (_formKey.currentState!.validate()) {
    // Form is valid, proceed with submission
  }
}

String? _validateEmail(value) {
  if (value!.isEmpty) {
    return "Please enter an email";
  }
  RegExp emailRegExp =
  RegExp(r'^[^\.\s][\w\-]+(\.[\w\-]+)*@([\w-]+\.)+[\w-]{2,}$');
  if (!emailRegExp.hasMatch(value)) {
    return "Please enter a valid email";
  }
  return null;
}

String? _validatePassword(value) {
  if (value!.isEmpty) {
    return "Please enter the password";
  }
  if (value.length < 6) {
    return 'Password length must be more than 6';
  }
  return null;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            '13_AdityaHendve- EXP4',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Material(
          child: Container(
            color: const Color.fromARGB(255, 48, 182, 192),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: const TextStyle(color: Colors.white),
                        errorStyle: const TextStyle(fontSize: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter a Username";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: const TextStyle(color: Colors.white),
                        errorStyle: const TextStyle(fontSize: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.white),
                        errorStyle: const TextStyle(fontSize: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _submitForm,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 9, 8, 8),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
