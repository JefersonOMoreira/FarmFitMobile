import 'dart:ui';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return appbarbaixo();
  }
}

class conteudopagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Seja bem vindo, ",
                style: TextStyle(
                    fontSize: 19, fontFamily: 'Inter', color: Colors.white),
              ),
            ),
            Padding(padding: EdgeInsets.all(1)),
            Text(
              "Agricultor",
              style: TextStyle(
                  fontSize: 19,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(15)),
        Container(
          height: 188,
          width: 252,
          decoration: BoxDecoration(
            color: Color(0xFF64B0FD),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("assets/logoFarmFit.png"),
            ),
          ),
        ),
      ],
    );
  }
}

class appbarbaixo extends StatefulWidget {
  @override
  State<appbarbaixo> createState() => _appbarbaixoState();
}

class _appbarbaixoState extends State<appbarbaixo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.charging_station,
                text: 'Painel',
              ),
              GButton(
                icon: Icons.charging_station,
                text: 'Painel',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFF035AA6),
      body: conteudopagina1(),
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "FarmFit.",
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
