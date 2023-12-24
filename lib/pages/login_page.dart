import 'package:flutter/material.dart';
import 'package:todolist/components/my_button.dart';
import 'package:todolist/components/my_text_field.dart';
import 'package:todolist/components/square_tile.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  
  //sign user_in method
  void signUserIn () {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const SafeArea (
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),

              //LOGO
              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(height: 50),

              //Welcome you've been missed
              Text(
                'Welcome back :). You\'ve been missed !',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                ),

                SizedBox(height: 10),

                //Textfield username
               MyTextField(),

               SizedBox(height: 10),

                //Textfield Password
                MyTextField(),

                SizedBox(height: 10),

                //Forgot Password
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                  ),
                ),

                SizedBox(height: 12),

                //sign in button
                MyButton(),

                SizedBox(height: 20),

                //or continu with
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                  )
                  ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:10.0),
                      child: Text(
                        'Or continu with',
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                    )
                    ),
                  ]),
                ),

                SizedBox(height: 30),

                //Google + fbk button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Google button
                    SquareTile(imagePath: 'lib/images/google.png'),

                    SizedBox(width: 30),

                    //fbk button 
                    SquareTile(imagePath: 'lib/images/google.png')
                  ],
                ),

                SizedBox(height: 40),

                //Not a member ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member ?',
                      style: TextStyle(
                      fontSize: 15
                      ),
                      ),
                    SizedBox(width: 4),
                    Text(
                      'Register now',
                      style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                      ),
                      ),
                  ],
                )
              ],
        ),
        )
      )
    );
  }
}