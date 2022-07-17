import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class PhoneOTP extends StatefulWidget {
  const PhoneOTP({Key? key}) : super(key: key);
  @override
  State<PhoneOTP> createState() => _PhoneOTPState();
}

class _PhoneOTPState extends State<PhoneOTP> {
  bool isSent = true;
  String otp = '';
  String phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5efe3),
      body: SafeArea(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 300,
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      phone = value;
                    });
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10)
                  ],
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.ad_units,
                      color: Colors.black26,
                    ),
                    hintText: "Mobile",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50,),
            SizedBox(
              width: 250,
              child: AbsorbPointer(
                absorbing: isSent,
                child: OTPTextField(
                  length: 4,
                  width: 240,
                  fieldWidth: 40,
                  style: const TextStyle(
                      fontSize: 17
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onChanged: (pin) {},
                  onCompleted: (pin) {
                    setState(() {
                      otp = pin;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 50,),
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: const BorderSide(color: Colors.black),
                            )
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          isSent = false;
                        });
                      },
                      child: const Text(
                        'SEND OTP',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50,),
                  SizedBox(
                    width: 100,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: const BorderSide(color: Colors.black),
                            )
                        ),
                      ),
                      onPressed: () {
                        if (otp == "0000"){
                          Navigator.pushNamedAndRemoveUntil(context, "/homepage", (route) => false);
                        }
                        else{
                          Navigator.pushReplacementNamed(context, "/phoneotp");
                        }
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
            )
          ],
        ),
      ),
    );
  }
}
