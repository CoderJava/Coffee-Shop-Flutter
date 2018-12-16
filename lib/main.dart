import 'package:flutter/material.dart';

void main() => runApp(CoffeeShop());

class CoffeeShop extends StatefulWidget {
  @override
  CoffeeShopState createState() => new CoffeeShopState();
}

class CoffeeShopState extends State<CoffeeShop> {
  int number = 0;

  void addNumber() {
    setState(() {
      number += 1;
    });
  }

  void subtractNumber() {
    setState(() {
      number -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Coffee Shop"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$number",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 160.0,
                  fontFamily: "Roboto"
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      addNumber();
                    },
                    child: Text("Add"),
                  ),
                  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text("Subtract"),
                    onPressed: () {
                      subtractNumber();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}