// ignore_for_file: deprecated_member_use

import 'dart:js';
import 'package:budgetbuddy_yuni/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:budgetbuddy_yuni/screen/halaman_beranda.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

String username = '';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Budget Buddy v1.0",
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: user,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "Masukkan Username",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.black87)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: pass,
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 40,
                  ),
                  hintText: "Masukkan Password",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black87)),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.teal,
              elevation: 5,
              child: SizedBox(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.beranda,
                    );
                  },
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
