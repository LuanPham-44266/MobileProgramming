import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _chkRemember = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "../icon_user.jpg",
                height: 250,
              ),
              const Text(
                "LOGIN INFORMATION",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: null,
                decoration: const InputDecoration(
                  hintText: "User name",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  labelText: "User Name",
                  icon: Icon(Icons.account_circle),
                ),
              ),
              TextFormField(
                obscureText: true,
                controller: null,
                decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  labelText: "Password",
                  icon: Icon(Icons.key),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          value: _chkRemember,
                          onChanged: (value) {
                            setState(() {
                              _chkRemember = value!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        "Remember me",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Forgot Password"),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(60),
                  backgroundColor: Colors.blue,
                ),
                child: const Text("LOGIN"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Register"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
