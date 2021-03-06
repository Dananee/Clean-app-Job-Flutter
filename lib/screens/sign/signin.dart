import 'package:clean_app/screens/sign/signup_page.dart';
import 'package:clean_app/screens/steps/step_one.dart';
import 'package:clean_app/screens/steps/step_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: footer(),
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .9,
                width: double.infinity,
                child: bodyForms()),
          ],
        ),
      ),
    );
  }

  Widget bodyForms() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 65,
          width: 56,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/women.png"),
                  fit: BoxFit.cover)),
        ),
        Text("clean",
            style: GoogleFonts.poppins(
                color: Colors.blue, fontSize: 35, fontWeight: FontWeight.w600)),
        Text(
          "We help you clean your home",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
        ),
        SizedBox(
          height: 20.0,
        ),
        form(false, 'Email Address', true),
        SizedBox(
          height: 20.0,
        ),
        form(true, 'Password', false),
        SizedBox(
          height: 20.0,
        ),
        FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {
              Navigator.pushNamed(context, StepOne.id);
            },
            padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 12.0),
            color: Colors.blue,
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0,
              ),
            )),
      ],
    );
  }

  Widget form(bool pwd, String label, bool email) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: TextField(
          keyboardType: email == true ? TextInputType.emailAddress : null,
          textAlign: TextAlign.center,
          obscureText: pwd,
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black, style: BorderStyle.solid, width: 20.0),
                borderRadius: BorderRadius.circular(30)),
            hintText: label,
            hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, color: Colors.grey[400]),
          ),
        ),
      ),
    );
  }

  Widget footer() {
    return Container(
      height: MediaQuery.of(context).size.height * .10,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              print("object");
            },
            child: Text(
              "Forget Password ? ",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            " | ",
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (cotext) {
                return SignUpPage();
              }));
            },
            child: Text(
              " Register Here",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
