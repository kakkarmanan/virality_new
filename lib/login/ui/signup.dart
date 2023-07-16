import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:virality_new/login/ui/login_page.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  bool _obscureText = true;
  bool _obscureTextt = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/img/virality_logo.png'),
        //     fit: BoxFit.scaleDown,
        //   ),
        // ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            constraints: BoxConstraints(
              maxWidth: 600.0,
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/virality_logo.png',
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'times new roman',
                            fontSize: 30),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      },
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      obscureText: _obscureText,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      cursorColor: const Color.fromARGB(0, 0, 0, 0),
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Confirm password',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureTextt
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureTextt = !_obscureTextt;
                            });
                          },
                        ),
                      ),
                      obscureText: _obscureTextt,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      cursorColor: const Color.fromARGB(0, 0, 0, 0),
                      onChanged: (value) {
                        setState(() {
                          _confirmPassword = value;
                        });
                      },
                    ),
                    const SizedBox(height: 40.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 87, 7, 7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 120.0,
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arimo'),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (_email.isNotEmpty &&
                              _password.isNotEmpty &&
                              _confirmPassword.isNotEmpty) {
                            // All form fields are valid and non-empty. Show alert.
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Sign up successfully'),
                                  actions: [
                                    TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            // Some form fields are empty. Show snackbar.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('All fields are required'),
                              ),
                            );
                          }
                        }
                      },
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Log in',
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 87, 7, 7),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                },
                            ),
                          ],
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
