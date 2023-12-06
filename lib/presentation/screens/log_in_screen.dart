import 'package:flutter/material.dart';
import 'package:store_app/presentation/components/widgets/custom_text_form_field.dart';
import 'package:store_app/presentation/screens/home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  static const String route = '/login';

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isEmailValid = true;
  bool _isPasswordValid = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Image(image: AssetImage('assets/logo.png')),
                    const SizedBox(height: 30.0),
                    const Text(
                      'Welcome to MEGA Store',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF223263),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                        letterSpacing: 0.50,
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    const Text(
                      'Sign in to continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF9098B1),
                        fontSize: 12,
                        //fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.15,
                        letterSpacing: 0.50,
                      ),
                    ),
                    const SizedBox(height: 28.0),
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Your Email',
                      isPassword: false,
                      colorFlag: _isEmailValid,
                      prefixIcon: Icons.email_outlined,
                      validator: validateEmail,
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      prefixIcon: Icons.lock_outline_rounded,
                      isPassword: true,
                      colorFlag: _isPasswordValid,
                      validator: validatePassword,
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          Navigator.pushReplacementNamed(
                              context, HomeScreen.route);
                        }
                      },
                      child: const Text('Sign In'),
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

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.contains('@')) {
      setState(() {
        _isEmailValid = false;
      });
      return 'Enter a valid email address';
    } else {
      setState(() {
        _isEmailValid = true;
      });
      return null;
    }

  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        _isPasswordValid = false;
      });
      return 'Enter a valid password';
    } else {
      setState(() {
        _isPasswordValid = true;
      });
      return null;
    }
  }
}
