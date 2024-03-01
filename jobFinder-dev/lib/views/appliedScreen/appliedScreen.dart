// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';
import 'package:jobfinder_app/controllers/widgets/components/appliedJobCard.dart';

class AppliedScreen extends StatefulWidget {
  const AppliedScreen({Key? key}) : super(key: key);

  @override
  State<AppliedScreen> createState() => _AppliedScreenState();
}

class _AppliedScreenState extends State<AppliedScreen> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const BackButton(),
                SizedBox(
                  width: 86.5.w,
                ),
                const Text(
                  JobFinderConstants.appliedJob,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(17, 24, 39, 1)),
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Container(
              width: 327.w,
              height: 46,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromRGBO(244, 244, 245, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isClicked = true;
                        });
                      },
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                        decoration: BoxDecoration(
                          color: _isClicked
                              ? const Color.fromRGBO(9, 26, 122, 1)
                              : const Color.fromARGB(0, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            'Active',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: _isClicked
                                  ? const Color.fromRGBO(255, 255, 255, 1)
                                  : const Color.fromRGBO(107, 114, 128, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isClicked = false;
                        });
                      },
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                        decoration: BoxDecoration(
                          color: _isClicked
                              ? const Color.fromARGB(0, 255, 255, 255)
                              : const Color.fromRGBO(9, 26, 122, 1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            'Rejected',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: _isClicked
                                  ? const Color.fromRGBO(107, 114, 128, 1)
                                  : const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _isClicked ? 24.h : 0.0,
            ),
            _isClicked
                ? Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 36.h,
                    color: const Color.fromRGBO(229, 231, 235, 1),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24).r,
                          child: const Text(
                            JobFinderConstants.jobs3,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(
                                  107,
                                  114,
                                  128,
                                  1,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 26.h),
                          AppliedJobCard(
                            isTypedOfWorkDone: false,
                            isUploadPortfolio: false,
                            isSaved: true,
                            subTitle: 'Spectrum • Jakarta, Indonesia',
                            jobImage: JobFinderConstants.spectrumLogo,
                            jobName: "UI/UX Designer",
                          ),
                          SizedBox(height: 8.h),
                          const Divider(
                            indent: 26,
                            endIndent: 26,
                            thickness: 1,
                            color: Color.fromRGBO(229, 231, 235, 1),

                          ),
                          SizedBox(height: 15.h),
                          AppliedJobCard(
                            isTypedOfWorkDone: true,
                            isUploadPortfolio: false,
                            isSaved: false,
                            subTitle: 'Discord • Jakarta, Indonesia',
                            jobImage: JobFinderConstants.discordLogo,
                            jobName: "UI/UX Designer",
                          ),
                          SizedBox(height: 8.h),
                          const Divider(
                            indent: 26,
                            endIndent: 26,
                            thickness: 1,
                            color: Color.fromRGBO(229, 231, 235, 1),
                          ),
                          SizedBox(height: 15.h),
                          AppliedJobCard(
                            isTypedOfWorkDone: true,
                            isUploadPortfolio: true,
                            isSaved: false,
                            subTitle: 'Invision • Jakarta, Indonesia',
                            jobImage: JobFinderConstants.invisionLogo,
                            jobName: "UI/UX Designer",
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
                : Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 25).r,
                  child: const Column(
                    children: [
                      SizedBox(height: 90),
                      Image(
                          image: AssetImage(
                              "assets/Images/NoApplicationRejected.png")),
                      SizedBox(height: 24),
                      Text(
                        "No applications were rejected",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: "SF Pro Display",
                          color: Color.fromRGBO(17, 24, 39, 10),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '''If there is an application that is rejected by the
                  company it will appear here
                               ''',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(107, 114, 128, 1)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
