import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var username = TextEditingController();
  var pss = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var aaeNames = ['ANAND', 'ROHAN', 'SHANI', 'AKRITI'];
    return Scaffold(
      appBar: AppBar(
        title: Text('ANAND'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: username,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.yellow, width: 2),
                  ),
                  suffixText: "USER NAME ",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: pss,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                    suffixText: "ENTER THE PASSWORD",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.abc_rounded,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    String usr = username.text.toString();
                    String pass = pss.text.toString();
                    print("USERNAME : $usr , Pass : $pass");
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
