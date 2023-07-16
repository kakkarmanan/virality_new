import 'package:flutter/gestures.dart';
// import 'package:virality/home/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:virality_new/login/ui/signup.dart';
import 'package:virality_new/home/Home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final String _email = 'abc@xtz.com';
  final String _password = '1234';
  bool _obscureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
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
                        'Login',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'times new roman',
                            fontSize: 30),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.blueAccent,
                        ),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.blueAccent,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.blueAccent,
                      ),
                      cursorColor: Colors.blueAccent,
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Colors.blueAccent,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.blueAccent,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.blueAccent,
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
                        color: Colors.blueAccent,
                      ),
                      cursorColor: Colors.blueAccent,
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                          text: 'Forgot Password? ',
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.blueAccent,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Forget Password'),
                                  backgroundColor:
                                      Color.fromARGB(255, 94, 255, 0),
                                ),
                              );
                            },
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 120.0,
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arimo'),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                        if (_emailController.text == _email &&
                            _passwordController.text == _password) {
                          // showDialog(
                          //   context: context,
                          //   builder: (BuildContext context) {
                          //     return AlertDialog(
                          //       title:
                          //           Text('Login in successfully as:' + _email),
                          //       actions: [
                          //         TextButton(
                          //           child: Text('OK'),
                          //           onPressed: () {
                          //             Navigator.pushReplacement(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) => Signup()),
                          //             );
                          //           },
                          //         ),
                          //       ],
                          //     );
                          //   },
                          // );
                        } else {
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(
                          //     content: Text('Invalid email or password.'),
                          //     backgroundColor: Colors.red,
                          //   ),
                          // );
                        }
                      },
                    ),
                    const SizedBox(height: 20.0),
                    const Divider(
                      thickness: 2,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Or continue with',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Login With Google ID'),
                                  backgroundColor:
                                      Color.fromARGB(255, 104, 99, 99),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/img/google-logo.png',
                              height: 50.0,
                              width: 50.0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Login With Facebook'),
                                  backgroundColor:
                                      Color.fromARGB(255, 104, 99, 99),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/img/facebook-logo.png',
                              height: 50.0,
                              width: 50.0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Login With Apple ID'),
                                  backgroundColor:
                                      Color.fromARGB(255, 104, 99, 99),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/img/apple-logo.png',
                              height: 50.0,
                              width: 50.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    RichText(
                      text: TextSpan(
                        text: 'Not a member? ',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueAccent,
                        ),
                        children: [
                          TextSpan(
                            text: 'Register now',
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()),
                                );
                              },
                          ),
                        ],
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
