import 'package:flutter/material.dart';
import 'package:flutter_app2/utilities/routes.dart';
// import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  // final ScrollController _control

  movetoHome(BuildContext context) {
    if (_formkey.currentState?.validate() ?? true) {
      Navigator.pushNamed(context, MyRoutes.gameRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      drawerEnableOpenDragGesture: false,
      // child: Center(
      //   child: Text(
      //     "Welome",
      //     style: TextStyle(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.blue,
      //     ),
      //     textScaleFactor: 4.0,
      //   ),
      // ),
      // color: Colors.white,
      // child: SingleChildScrollView(
      appBar: AppBar(
          // title: Text("Game-1"),
          ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(children: [
                //   appBar: AppBar(
                // // title: Text("Game-1"),
                // ),
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  " Login to play Game",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                  textScaleFactor: 2.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  // padding: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: ("Username"),
                              hintText: ("Enter Your Name")),
                          validator: (value) {
                            if (value?.isEmpty ?? true)
                              return "username can't be empty";
                            else
                              return "✅";
                          }),
                      TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: ("Email-id"),
                              hintText: ("Enter Your Email-id")),
                          validator: (value) {
                            if (value?.isEmpty ?? true)
                              return "Email can't be empty";
                            else
                              return "✅";
                          }),
                      TextFormField(
                          obscureText:
                              true, // to make password dot dot dot ....
                          decoration: InputDecoration(
                              labelText: ("Password"),
                              hintText: ("Enter password")),
                          validator: (value) {
                            if (value?.isEmpty ?? false)
                              return "password can't be empty";
                            else
                              return "✅";
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                  // onPressed: () => movetoHome(context),
                  // Navigator.pushNamed(context, MyRoutes.homeRoute);
                  onPressed: () {
                    // if (_formkey.currentState?.validate() ?? true) {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  // },

                  //skiping container design
                ),
              ]),
            ),
          ),
        ),
      ),
      // ),
    );
  }
}



