import 'package:flutter/material.dart';
import 'package:modul_4/main.dart';
import 'package:modul_4/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  SharedPreferences loginData;
  String username;
  String fullname;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username');
      fullname = loginData.getString('fullname');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Homepage",
          style: TextStyle(
              fontFamily: 'San Francisco',
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: AlertDialog(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                title: Text(
                  "Successful!",
                  style: TextStyle(
                    fontFamily: 'San Francisco',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                content: Text(
                  "NIM : $username\nName : $fullname",
                  style: TextStyle(
                    fontFamily: 'San Francisco',
                    fontSize: 16.0,
                  ),
                ),
                actions: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0)),
                    color: mainColor,
                    onPressed: () {
                      loginData.setBool('login', true);
                      print(
                          'Successfully logged out! If you want use this. Please, login again.');
                      Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => MyLoginPage()));
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontFamily: 'San Francisco',
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.logout,
                          // Icons.meeting_room_rounded,
                          color: Colors.white, size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //   child: Text(
            //       'Successful! \nAbout account \n-> $username \n-> $fullname',
            //       style: TextStyle(
            //           fontSize: 25,
            //           fontWeight: FontWeight.bold,
            //           fontFamily: 'San Francisco'),
            //       textAlign: TextAlign.center),
            // ),
            // ignore: deprecated_member_use
            // RaisedButton(
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(36.0)),
            //   onPressed: () {
            //     logindata.setBool('login', true);
            //     print('Logout is successfully. Please, login again.');
            //     Navigator.pushReplacement(context,
            //         new MaterialPageRoute(builder: (context) => MyLoginPage()));
            //   },
            //   child: Text('LogOut'),
            // )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:modul_4/screen/login.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// // import 'login.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     SharedPreferences loginData;
//     String username;
//     String fullname;

//     @override
//     void initState() {
//       super.initState();
//       _initial();
//     }

//     void _initial() async {
//       loginData = await SharedPreferences.getInstance();
//       setState(() {
//         username = loginData.getString('username');
//         fullname = loginData.getString('fullname');
//       });
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Homepage"),
//         automaticallyImplyLeading: false,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(26.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Center(
//               child: Text(
//                 'Login Sukses:  $username $fullname',
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               ),
//             ),
//             // ignore: deprecated_member_use
//             RaisedButton(
//               onPressed: () {
//                 loginData.setBool('login', true);
//                 Navigator.pushReplacement(context,
//                     new MaterialPageRoute(builder: (context) => SignIn()));
//               },
//               child: Text('LogOut'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
