import 'package:flutter/material.dart';
import 'package:log_in_ui/screens/log_in_screen.dart';
import 'package:log_in_ui/screens/sign_up_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        width: 110,
                        height: 160,
                        child: Image.asset('assets/image/img2.jpg')
                    ),
                    Positioned(
                        top: 120,
                        left: 10,
                        width: 350,
                        height: 350,
                        child: Image.asset('assets/image/img3.jpg')
                    ),
                    Positioned(
                        top: 0,
                        left: 0,
                        width: 150,
                        height: 175,
                        child: Image.asset('assets/image/img1.jpg'),
                    ),
                    Positioned(
                        right: 0,
                        top: 410,
                        height: 120,
                        width: 80,
                        child: Image.asset('assets/image/img4.jpg'),
                    ),
                    const Positioned(
                      top: 70,
                      left: 128,
                      child: Text("WELCOME TO EDU", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    ),
                    Positioned(
                      bottom: 90,
                        left: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LogIn(),
                                ));
                          },
                          child: const Text("LOGIN"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              fixedSize: const Size(300, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),),
                        ),
                    Positioned(
                      bottom: 25,
                      left: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ));
                        },
                        child: Text("SIGNUP",
                        style: TextStyle(color: Colors.deepPurple.shade900),),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple.shade200,
                            fixedSize: const Size(300, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
