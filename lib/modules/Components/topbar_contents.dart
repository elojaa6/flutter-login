// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({super.key});

  @override
  topBarContentsState createState() => topBarContentsState();
}

class topBarContentsState extends State<TopBarContents> {
  final List isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: screenSize.width / 16,
              ),
              /*
              const Text(
                'GIETAES',
                style: TextStyle(
                    color: Color(0xFF077bd7),
                    fontSize: 26,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3),
              ),*/
              Image.asset('../../../images/Logo.png'),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[0] = true : isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Perfil',
                      style: TextStyle(
                          color: isHovering[0]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: const Color(0xFF051441),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[1] = true : isHovering[1] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Tutorias',
                      style: TextStyle(
                          color: isHovering[1]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHovering[1],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: const Color(0xFF051441),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[2] = true : isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Cooperate',
                      style: TextStyle(
                          color: isHovering[2]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: const Color(0xFF051441),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[3] = true : isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                          color: isHovering[3]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHovering[3],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: const Color(0xFF051441),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[4] = true : isHovering[4] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '11111111',
                      style: TextStyle(
                          color: isHovering[4]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHovering[4],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: const Color(0xFF051441),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[5] = true : isHovering[5] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '222222',
                      style: TextStyle(
                          color: isHovering[5]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHovering[5],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: const Color(0xFF051441),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
