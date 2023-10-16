// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
// import 'package:sendgrid/sendgrid.dart';
import 'package:sendgrid_mailer/sendgrid_mailer.dart';


class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static var routeName;

  // void _sendResetLink(BuildContext context) {
  //   if (_formKey.currentState!.validate()) {
  //     // TODO: Implement your logic to send the password reset link.
  //     String email = _emailController.text;










      
  //     print('Send password reset link to: $email');
  //     // Here you would typically send the reset link to the user's email.
  //     // You can integrate with your backend API or use a third-party service.
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address.';
                  } else if (!value.contains('@')) {
                    return 'Please enter a valid email address.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal
                ),
                onPressed: () => _sendResetLink(),
                child: Text('Send Reset Link'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:sendgrid/sendgrid.dart';

_sendResetLink() async {
  final mailer = Mailer('7C856CAED2CE1B3B7488ECACFA7CA6701F1B71206A3D218F41A1E5817A9BF30C4F55A60586AA6BAF114ABA9829ED7603');
  final toAddress = Address('samsonsamuel252@gmail.com');
  final fromAddress = Address('topsticksam@gmail.com');
  final content = Content('text/plain', 'Hello World!');
  final subject = 'Hello Subject!';
  final personalization = Personalization([toAddress]);

  final email =
      Email([personalization], fromAddress, subject, content: [content]);
  mailer.send(email).then((result) {
    // ...
  });
}

