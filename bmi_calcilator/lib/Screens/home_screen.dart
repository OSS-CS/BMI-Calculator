// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore_for_file: deprecated_member_use
// import 'package:flutter_svg/flutter_svg.dart';

class bmi extends StatefulWidget {
  @override
  _bmi_pageState createState() => _bmi_pageState();
}

class _bmi_pageState extends State<bmi> {
  final height = TextEditingController();
  final weight = TextEditingController();
  String Gender = 'ذكر'; // Default selected option
  late double bmi;

  String calculateBMI(double height, double weight) {
    String  Sheight =height.text;
    height = double.parse(height.text);
    weight = weight.text;
    
    
    setState(() {
      bmi = weight / ((height / 100) * (height / 100));
    });
String bmr =bmiCategory(bmi);
    return "";
  }

  String bmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 24.9) {
      return 'Normal';
    } else if (bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(15.h, 0, 0, 0),
          child: Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Welcome");
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              )),
        ),
        title: Text(
          "تسجيل حساب جديد",
          style: TextStyle(
            fontSize: 25.sp,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35.h,
              ),
              Container(
                width: 280.w,
                child: Text(
                  ":الطول",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                  textAlign: TextAlign.end,
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 9.w),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20)),
                  width: 300.w,
                  child: TextField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      controller: height,
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "الرجاء ادخال الطول بوحدة cm",
                        hintStyle:
                            TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ))),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 280.w,
                child: Text(
                  ":الوزن",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.end,
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 9.w),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20)),
                  width: 300.w,
                  child: TextField(
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      controller: weight,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "الرجاء ادخال الوزن بوحدة KG",
                        hintStyle:
                            TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ))),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 300.w,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: const Color.fromARGB(255, 254, 254, 254)),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(0, 203, 131, 1)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))))),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
