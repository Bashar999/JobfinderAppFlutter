import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/completeProfile/personalDetails.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,top: 16),
                  child: Container(
                    width: 327.w,
                    height: 24.h,
                    child: Row(
                      children: [
                       GestureDetector(
                         onTap: (){

                         },
                           child: Icon(Icons.arrow_back,
                             size: 24,)
                       ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Text("Complete Profile",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: "SF Pro Display"
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 31,right: 30,top: 33),
                  child: Container(
                    width: 314.w,
                    height: 170.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.grey,
                          child:  CircleAvatar(
                            radius: 38,
                            backgroundColor: Colors.white,
                            child: Text("50%"),
                          ),
                        ),
                        SizedBox(height: 12.h,),
                        Text("2/4 Completed",
                        style: TextStyle(
                          fontFamily: "SF Pro Display",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(51, 102, 255, 1)
                        ),
                        ),
                        SizedBox(height: 8.h,),
                        Text("Complete your profile before applying for a job",
                          style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(107, 114, 128, 1  )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,top: 34),
                  child: Container(
                    width: 327.w,
                    height: 400.h,
                    child:Column(
                      children: [
                        Container(
                          width: 327.w,
                          height: 85.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                              border: Border.all(color: Color.fromRGBO(209, 213, 219, 1)
                              )
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ProfileDetails()));
                            },
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color.fromRGBO(156, 163, 175, 1),
                                child: Icon(Icons.check,color: Colors.white,),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "Personal Details"
                              ),
                            ),
                            subtitle: Text(
                              "Full name, email, phone number, and your address",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            trailing: GestureDetector(
                              onTap: (){

                              },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Icon(Icons.arrow_forward,
                                  size: 20,
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Container(
                          width: 327.w,
                          height: 85.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,//Color.fromRGBO(224, 235, 255, 1),
                              border: Border.all(color: Color.fromRGBO(209, 213, 219, 1))
                          ),
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color.fromRGBO(156, 163, 175, 1),
                                child: Icon(Icons.check,color: Colors.white,),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                  "Education"
                              ),
                            ),
                            subtitle: Text(
                              "Enter your educational history to be considered by the recruiter",
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            ),
                            trailing: GestureDetector(
                                onTap: (){

                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Icon(Icons.arrow_forward,
                                    size: 20,
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Container(
                          width: 327.w,
                          height: 85.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,//Color.fromRGBO(224, 235, 255, 1),
                              border: Border.all(color: Color.fromRGBO(209, 213, 219, 1))
                          ),
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color.fromRGBO(156, 163, 175, 1),
                                child: Icon(Icons.check,color: Colors.white,),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                  "Experience"
                              ),
                            ),
                            subtitle: Text(
                              "Enter your work experience to be considered by the recruiter",
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            ),
                            trailing: GestureDetector(
                                onTap: (){

                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Icon(Icons.arrow_forward,
                                    size: 20,
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Container(
                          width: 327.w,
                          height: 85.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(color: Color.fromRGBO(209, 213, 219, 1))
                          ),
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color.fromRGBO(156, 163, 175, 1),
                                child: Icon(Icons.check,color: Colors.white,),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                  "Portfolio"
                              ),
                            ),
                            subtitle: Text(
                              "Create your portfolio. Applying for various types of jobs is easier.",
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            ),
                            trailing: GestureDetector(
                                onTap: (){

                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Icon(Icons.arrow_forward,
                                    size: 20,
                                  ),
                                )
                            ),
                          ),
                        ),

                      ],
                    ),

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
