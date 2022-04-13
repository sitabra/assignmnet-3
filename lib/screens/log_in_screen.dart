import 'package:flutter/material.dart';
import 'package:log_in_ui/screens/sign_up_screen.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
            children: [
              SizedBox(
                height: 310,
                width: double.infinity,
                child: Stack(
                  children: [
                    const Positioned(
                      top: 40,
                      left: 150,
                      child: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    ),
                    Positioned(
                        top: 60,
                        left: 50,
                        width: 250,
                        height: 250,
                        child: Image.asset('assets/image/img6.jpg')
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'abc@xzymail.com',
                        prefixIcon: const Icon(Icons.person),
                        suffixIcon: emailController.text.isEmpty
                          ?Container(height: 0,width: 0,)
                        :IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => emailController.clear(),
                        ),
                        filled: true,
                        fillColor: Colors.purple.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )
                        ),
                      ),
                    const SizedBox(height: 10,),
                    TextField(
                      onChanged: (value) => setState(() => this.password = value),
                      onSubmitted: (value) => setState(() => this.password = value),
                      decoration: InputDecoration(
                        hintText: 'password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: isPasswordVisible
                              ?const Icon(Icons.visibility_off)
                              :const Icon(Icons.visibility),
                          onPressed: () =>
                          setState(() => isPasswordVisible = !isPasswordVisible),
                        ),
                          filled: true,
                          fillColor: Colors.purple.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )
                      ),
                      obscureText: isPasswordVisible,
                    ),])),
                    Container(
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            bottom: 0,
                            height: 128,
                            width: 170,
                            child: Image.asset('assets/image/img5.jpg'),
                          ),
                          Positioned(
                            bottom: 130,
                            left: 30,
                            child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("LOGIN"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                fixedSize: const Size(300, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                        ),
                          ),
                      Positioned(
                        right: 75,
                        bottom: 80,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUp(),
                                  ));
                            },
                            child: const Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(text: 'Don\'t have an account? ', style: TextStyle(color: Colors.purple,fontSize: 12)),
                                      TextSpan(
                                          text: ' Sign Up',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12,color: Colors.purple))
                                    ])),
                        ),
                        ),
                        ],
                       ),
                    ),
            ],
          ),
         ],
        ),
      ),
    );
  }
}
