import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  late TextEditingController pwdController;

  @override
  void initState() {
    super.initState();
    pwdController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                AppBar(
                  titleSpacing: 0,
                  backgroundColor: Colors.transparent,
                  automaticallyImplyLeading: true,
                  elevation: 0,
                ),
                const FlutterLogo(
                  size: 100,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  validator: (value) {
                    return (value != null && value.isNotEmpty)
                        ? null
                        : "Field required";
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.white54,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator: (value) {
                    return _emailRegExp.hasMatch(value ?? '')
                        ? null
                        : "Email invalid";
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      fillColor: Colors.white54,
                      filled: true),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator: (value) {
                    return (value != null && value.isNotEmpty)
                        ? null
                        : "Field required";
                  },
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: pwdController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      fillColor: Colors.white54,
                      filled: true),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator: (value) {
                    return (value == pwdController.text)
                        ? null
                        : "Retype password";
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                      fillColor: Colors.white54,
                      filled: true),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const HomePage()),
                        );
                      }
                    },
                    child: const Text(
                      "Signup",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?"),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
