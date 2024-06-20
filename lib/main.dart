import 'package:flutter/material.dart';
import 'package:login_page/components/socialIcon.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(),
          body: 
          Stack(
            children: [
               Positioned.fill(
                child: 
              Image.asset(
                "assets/images/Vector.png",
                fit: BoxFit.fitWidth, // Adjust the image fit
                alignment: Alignment.bottomCenter,
                width: double.infinity,
              ),
              ),
              Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/undraw_login.png',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    //color: Color.fromARGB(255, 231, 235, 234),
                    child: Text(
                      'Login Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 6.0, bottom: 4.0),
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Username , email & phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 6.0, bottom: 6.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      // Handle the forgot password action
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 0.0, bottom: 20.0),
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle the login action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(11, 110, 254, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          "assets/images/Rectangle_29.png",
                          fit: BoxFit.cover, // Adjust the image fit
                        ),
                      ),
                      const SizedBox(width: 2), // Space between images and text
                      const Expanded(
                        flex: 2, // Takes twice the space of each image
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Or Sign up With',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 2), // Space between text and images
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          "assets/images/Rectangle_30.png",
                          fit: BoxFit.cover, // Adjust the image fit
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIcon( flex: 1, backImage: "assets/images/Ellipse.png", frontImage: "assets/images/Google.png"),
                      SocialIcon( flex: 1, backImage: "assets/images/Ellipse.png", frontImage: "assets/images/Facebook.png"),
                      SocialIcon( flex: 1, backImage: "assets/images/Ellipse.png", frontImage: "assets/images/Apple.png"),
                    ],
                  ),
                ),
              ],
            ),
            ]
          )),
    );
  }
}
