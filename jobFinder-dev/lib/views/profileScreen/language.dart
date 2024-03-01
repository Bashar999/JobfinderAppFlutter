import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 60.h,left: 24.w),
            child: Container(
              width: 327.w,
              height: 24.h,
              child: Row(
                children: [
                    Icon(Icons.arrow_back,size: 24,),
                  Padding(
                    padding:  EdgeInsets.only(left: 95.w),
                    child: Text("Language",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28,right: 24,left: 24),
            child: Container(
              width: 327,
              height: 64,
              child: ListTile(
                leading: Image.asset("assets/Images/flag1.png",
                  width: 30,
                  height: 20,

                ),
                title: Text("English"),
                trailing: Icon(Icons.radio_button_checked),
              ),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag2.png",
                width: 30,
                height: 20,

              ),
              title: Text("Indonesia"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag3.png",
                width: 30,
                height: 20,

              ),
              title: Text("Arabic"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag4.png",
                width: 30,
                height: 20,

              ),
              title: Text("Chinese"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag5.png",
                width: 30,
                height: 20,

              ),
              title: Text("Dutch"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag6.png",
                width: 30,
                height: 20,

              ),
              title: Text("French"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag7.png",
                width: 30,
                height: 20,

              ),
              title: Text("German"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag8.png",
                width: 30,
                height: 20,

              ),
              title: Text("Japanese"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag9.png",
                width: 30,
                height: 20,

              ),
              title: Text("Korean"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag10.png",
                width: 30,
                height: 20,

              ),
              title: Text("Portuguese"),
              trailing: Icon(Icons.radio_button_off),
            ),
          ),
        ],
      ),
    );
  }
}
