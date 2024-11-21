// home/view/widgets/register_form.dart
import 'package:flutter/material.dart';
import 'package:pos_sibayar/home/view/screen/login_screen.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  // Controllers for each field
  final _nameController = TextEditingController();
  final _ktpController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _businessNameController = TextEditingController();
  final _businessTypeController = TextEditingController();
  final _businessAddressController = TextEditingController();
  final _npwpController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  // Tracking the current step
  int _currentStep = 0;

  // For password visibility
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  // Terms and conditions checkbox
  bool _isCheckedTerms = false;
  bool _isCheckedPromise = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_register.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Register Text
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink[500],
                      ),
                    ),
                    SizedBox(height: 50),
                    // Form Container with a fixed height
                    Container(
                      width: 320, // Fixed width
                      height:
                          420, // Fixed height to ensure consistency across steps
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (_currentStep == 0) ...[
                            // Step 1: Personal Info
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Nama Lengkap'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _nameController,
                                decoration: InputDecoration(
                                  hintText: 'Masukan nama lengkap',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('KTP'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _ktpController,
                                decoration: InputDecoration(
                                  hintText: 'Masukan no. KTP',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Email'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'Email@gmail.com',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('No Hp'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _phoneController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: 'Masukan no hp',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            // Next Button positioned to the right
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _currentStep++; // Go to the next step
                                  });
                                },
                                child: Text('Next'),
                              ),
                            ),
                          ] else if (_currentStep == 1) ...[
                            // Step 2: Business Info
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Nama Usaha'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _businessNameController,
                                decoration: InputDecoration(
                                  hintText: 'Masukan nama usaha',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Jenis Usaha'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _businessTypeController,
                                decoration: InputDecoration(
                                  hintText: 'Masukan jenis usaha',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Alamat Usaha'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _businessAddressController,
                                decoration: InputDecoration(
                                  hintText: 'Masukan alamat usaha',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('NPWP'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _npwpController,
                                decoration: InputDecoration(
                                  hintText: 'Masukan NPWP',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Back Button
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _currentStep--; // Go to the previous step
                                    });
                                  },
                                  child: Text('Back'),
                                ),
                                // Next Button
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _currentStep++; // Go to the next step
                                    });
                                  },
                                  child: Text('Next'),
                                ),
                              ],
                            ),
                          ] else if (_currentStep == 2) ...[
                            // Step 3: Account Info
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Password'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _passwordController,
                                obscureText: !_isPasswordVisible,
                                decoration: InputDecoration(
                                  hintText: 'Masukan password',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                  suffixIcon: IconButton(
                                    icon: Icon(_isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible =
                                            !_isPasswordVisible;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Konfirmasi Password'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                controller: _confirmPasswordController,
                                obscureText: !_isConfirmPasswordVisible,
                                decoration: InputDecoration(
                                  hintText: 'Masukan konfirmasi password',
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                  suffixIcon: IconButton(
                                    icon: Icon(_isConfirmPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isConfirmPasswordVisible =
                                            !_isConfirmPasswordVisible;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            // Terms and conditions checkbox
                            Row(
                              children: [
                                Checkbox(
                                  value: _isCheckedTerms,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isCheckedTerms = value!;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Saya dengan syarat dan ketentuan",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isCheckedPromise,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isCheckedPromise = value!;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Saya menjamin data yang saya masukkan adalah benar",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            // Register Button
                            SizedBox(height: 80),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Back Button
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _currentStep--; // Go to the previous step
                                    });
                                  },
                                  child: Text('Back'),
                                ),
                                // Next Button
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle registration logic
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginScreen(),
                                      ),
                                    );
                                  },
                                  child: Text('Register'),
                                ),
                              ],
                            ),
                          ]
                        ],
                      ),
                    ),
                    SizedBox(height: 100),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sudah punya akun?'),
                        SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    LoginScreen(), // Ensure LoginScreen is imported
                              ),
                            );
                          },
                          child: Text(
                            'Masuk',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor:
                                Color(0xFF0EA5E9), // Text color (white)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
