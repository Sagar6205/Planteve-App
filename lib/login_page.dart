import 'package:flutter/material.dart';
import 'package:planteve/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First widget (fixed background image)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/plant.jpg", // Background
              fit: BoxFit.cover,
            ),
          ),
          // Second widget (fixed background image)
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/sub.png", // Background
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Rest of the content within the Stack
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(top: 100)),
                Container(
                  child: const Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Color(0xFF3E6652),
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: const Text(
                    "Login to your account",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffc9e3d5),
                    ),
                    child: TextFormField(

                      decoration: const InputDecoration(
                          labelText: 'Fullname',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3F6652),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 28,
                              right: 16), // Adjust content padding as needed
                          prefixIconConstraints: BoxConstraints(
                            minWidth:
                            0, // Set the minimum width to 0 to align with the start of the TextFormField
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                right:
                                10), // Adjust right padding for space between icon and text
                            child: Icon(
                              Icons.account_circle, // Replace with the shield icon you have available
                              color: Color(0xff3F6652),
                            ),
                          ),

                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffc8e3d4),
                    ),
                    child: TextFormField(
                      obscureText: true, // To hide the password
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3F6652),
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 28,
                            right: 16), // Adjust content padding as needed
                        prefixIconConstraints: BoxConstraints(
                          minWidth:
                              0, // Set the minimum width to 0 to align with the start of the TextFormField
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              right:
                                  10), // Adjust right padding for space between icon and text
                          child: Icon(
                            Icons.lock, // Replace with the shield icon you have available
                            color: Color(0xff3F6652),
                          ),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xff3f6652),
                        )
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 6),
                  alignment: const Alignment(0.2, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.check_circle, // Replace with your desired check icon
                        size: 13,
                        color: Color(0xff3f6652),
                      ),
                      SizedBox(width: 6), // Adjust the space between icon and text
                      Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff93A99E),
                        ),
                      ),
                      SizedBox(width:140,),
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          fontSize: 11.5,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3F6652),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 75),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(310, 48),
                        backgroundColor: const Color(0xff3f6652),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignupPage()));
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                ),

                Padding(
                  padding: const EdgeInsets.only(top:7,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          "Don’t have an account ?",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          )
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                        },
                        child: const Text(
                            " Sign up",
                            style: TextStyle(
                              fontSize: 13.5,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3F6652)
                            )
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
