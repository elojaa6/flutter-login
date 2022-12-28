// ignore_for_file: use_key_in_widget_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:proyecto/modules/perfil/perfil_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blueAccent, Colors.yellow, Colors.white])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 01,
              ),
              Image.asset('images/Logo.png'),
              const SizedBox(
                height: 15,
              ),
              Container(
                  height: 550,
                  width: 325,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Bienvenido',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Acceda a su cuenta',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Correo Electronico',
                              suffixIcon: Icon(
                                Icons.mail,
                                size: 17,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Contraseña',
                              suffixIcon: Icon(
                                Icons.lock,
                                size: 17,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 40, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Contraseña olvidada',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 17, 0, 255)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.white,
                                    Colors.yellow,
                                    Colors.blueAccent,
                                  ])),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PerfilPage()));
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.white,
                                    Colors.yellow,
                                    Colors.blueAccent,
                                  ])),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Microsoft',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PerfilPage()));
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'O conéctese a través de las redes sociales',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.facebook,
                            color: Color.fromARGB(255, 51, 0, 255),
                          ),
                          Icon(
                            Icons.facebook,
                            color: Color.fromARGB(255, 77, 255, 0),
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text("Bienvenido"),
      ],
    );
  }

  _inputField(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      TextField(
        decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person)),
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person)),
        obscureText: true,
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        // ignore: sort_child_properties_last
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16)),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        // ignore: sort_child_properties_last
        child: const Text(
          "Microsoft",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16)),
      )
    ]);
  }

  _forgotPassword(context) {
    return TextButton(
        onPressed: () {}, child: const Text("Olvidaste Tu Contraseña"));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("No Estas Registrado?"),
        TextButton(onPressed: () {}, child: const Text("Registrarme"))
      ],
    );
  }
}
