import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  void navigateToLogin(context) async {
    await Future.delayed(const Duration(seconds: 10));
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) => navigateToLogin(context));

    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Color(0xff093D73)),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 129,
                      height: 173),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              'Uni   ',
                              style: TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Pass',
                              style: TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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