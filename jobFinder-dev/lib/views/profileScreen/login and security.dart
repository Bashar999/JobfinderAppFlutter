import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class loginandsecurity extends StatefulWidget {
  const loginandsecurity({super.key});

  @override
  State<loginandsecurity> createState() => _loginandsecurityState();
}

class _loginandsecurityState extends State<loginandsecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 25.h),
          child: Column(
            children: [
              Container(
                width: 327.w,
                height: 34.h,
                child: Row(
                  children: [
                    Icon(Icons.arrow_back,size: 24,),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text("Login and security",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 34),
                child: Container(
                  width: 375.w,
                  height: 37.h,
                  color: Color.fromRGBO(244, 244, 245, 1),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 24,top: 8),
                    child: Text("Accont access",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(107, 114, 128, 1)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Text("Email address",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),

                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text('rafifdian12@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),

                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              ListTile(
                leading: Text("Phone number",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
        
                ),
                trailing: Icon(Icons.arrow_forward),
                ),
              ListTile(
                leading: Text("Change password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),

                ),
                trailing: Icon(Icons.arrow_forward),
              ),
          ListTile(
            leading: Text("Two-step verification",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),

            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Non active',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),

              ),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
              ListTile(
                leading: Text("Face ID",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),

                ),
                trailing: Icon(Icons.arrow_forward),
              ),



        
            ],
          ),
        ),
      ),
    );
  }
}
