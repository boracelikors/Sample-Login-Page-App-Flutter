import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.white),
    title: "arayüz deneme",
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(
            size: 50,
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            "Login",
            style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(450, 1, 87, 155),
                fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(30),
            height: 250,
            width: MediaQuery.of(context).size.width - 70,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                Material(
                    elevation: 7.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Text(
                        "Login with E-Mail",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                      height: 75,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                        elevation: 7.0,
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(30)),
                            height: 50,
                            width: 150,
                            child: Center(
                                child: Text(
                              "Login with Facebook",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )))),
                    SizedBox(
                      width: 20,
                    ),
                    Material(
                        elevation: 7.0,
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(30)),
                            height: 50,
                            width: 150,
                            child: Center(
                                child: Text(
                              "Login with Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ))))
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
