import 'package:flutter/material.dart';
import 'package:flutter_app2/utilities/routes.dart';

class S_Playerinfo extends StatelessWidget {
  const S_Playerinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Player Info"),
      ),
      body: Container(
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Enter Player Details",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                  textScaleFactor: 2.0,
                ),
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
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: ("Player Name"),
                            hintText: ("Enter Your Name")),
                        validator: (value) {
                          if (value?.isEmpty ?? true)
                            return "username can't be empty";
                          else
                            return "✅";
                        }),
                    SizedBox(
                      height: 10.0,
                    ),
                    // TextFormField(
                    //     obscureText: false,
                    //     decoration: InputDecoration(
                    //         labelText: ("Player 2"),
                    //         hintText: ("Enter Your Name")),
                    //     validator: (value) {
                    //       if (value?.isEmpty ?? true)
                    //         return "Email can't be empty";
                    //       else
                    //         return "✅";
                    //     }),
                    // TextFormField(
                    //     obscureText: true, // to make password dot dot dot ....
                    //     decoration: InputDecoration(
                    //         labelText: ("Password"),
                    //         hintText: ("Enter password")),
                    //     validator: (value) {
                    //       if (value?.isEmpty ?? false)
                    //         return "password can't be empty";
                    //       else
                    //         return "✅";
                    //     })
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                child: Text("Start Game"),
                style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                // onPressed: () => movetoHome(context),
                // Navigator.pushNamed(context, MyRoutes.homeRoute);
                onPressed: () {
                  // if (_formkey.currentState?.validate() ?? true) {
                  Navigator.pushNamed(context, MyRoutes.SingleGameRoute);
                },
                // },

                //skiping container design
              ),
            ],
          ),
        ),
      ),
    );
  }
}
