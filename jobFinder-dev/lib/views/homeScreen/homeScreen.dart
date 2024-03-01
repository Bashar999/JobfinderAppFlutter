import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/widgets/recentJobCard.dart';
import 'package:jobfinder_app/controllers/widgets/suggestedJobCard.dart';
import 'package:jobfinder_app/views/homeScreen/search.dart';

import '../../controllers/cubits/ApplyJobCubit/ApplyStates.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    String? name=cubit.profName;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                  top: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Hi, $name👋",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        const Text(
                          "Create a better future for yourself here",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(107, 114, 128, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 38.w, right: 24.w, top: 23.h),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 24.r,
                            child: CircleAvatar(
                              radius: 23.r,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/Icons/bell.svg',
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const SearchScreen()));
              },
              child: Container(
                width: 327.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,),
                      child: Image.asset(
                        "assets/Images/search.png",
                        width: 20.w,
                        height: 20.h,
                        color: Colors.black,
                      )
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w),
                      child: Text(
                          "Search....",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Display",
                          color: Color.fromRGBO(156, 163, 175, 1)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SizedBox(
                    width: 270.w,
                    child: const Text(
                      "Suggested Job",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                  },
                  child: SizedBox(
                    width: 60.w,
                    height: 20.h,
                    child: const Text(
                      "View all",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(51, 102, 255, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
            SizedBox(
              height: 183.h,
              width: 320.w,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                   SuggestedJobCard(
                     jobName: cubit.suggestedJobs[1],
                     img: cubit.suggestedJobs[2],
                     jobTime: cubit.suggestedJobs[3],
                     jobType:cubit.suggestedJobs[4] ,
                     salary: cubit.suggestedJobs[13],
                     jobSkill: cubit.suggestedJobs[7],
                     jobLvl: cubit.suggestedJobs[5],
                     jobDesc: cubit.suggestedJobs[6],
                     compWeb: cubit.suggestedJobs[10],
                     compName: cubit.suggestedJobs[8],
                     compInfo: cubit.suggestedJobs[11],
                     compEmail: cubit.suggestedJobs[9],
                  ),
                  SizedBox(
                    width: 16.h,
                  ),
                 // const SuggestedJobCard()
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SizedBox(
                    width: 270.w,
                    child: const Text(
                      "Recent Job",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: 60.w,
                    height: 20.h,
                    child: const Text(
                      "View all",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(51, 102, 255, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
            const RecentJobCard(),
            const RecentJobCard(),
            const RecentJobCard(),
          ],
        ),
      )),
    );

});
}}

