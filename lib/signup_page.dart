import 'package:flutter/material.dart';
import 'package:planteve/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,

          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              children: [
                Container(
                  child: const Text(
                    "Register",
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
                    "Create your new account",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
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
                const SizedBox(height: 30,),

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
                        labelText: 'Email',
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
                            Icons.email, // Replace with the shield icon you have available
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
                  margin: const EdgeInsets.only(top: 50),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(345, 48),
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
                        "Sign up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
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
                const SizedBox(
                  height: 35,
                ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 2,
                    color: const Color(0xff3f6652),
                  ),
                  const Text(
                      "  or continue with  ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3F6652),
                      )
                  ),
                  Container(
                    width: 90,
                    height: 2,
                    color: const Color(0xff3f6652),
                  ),
                ],
              ),

                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: Image.asset("assets/images/Socialico.png",
                   height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          "Already have an account ?",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          )
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                        },
                        child: const Text(
                            " Login",
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
        ),
      ),
    );
  }
}
