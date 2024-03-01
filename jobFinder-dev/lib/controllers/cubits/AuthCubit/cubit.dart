// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ApplyJobCubit/ApplyStates.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitState());
  static AuthCubit get(context) => BlocProvider.of(context);

  static TextEditingController password = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController nameController = TextEditingController();
  //--------------- Create Profile Methods-------------//
String? profName;
List<dynamic> suggestedJobs = [];
  Future<void> CreateUser(
    context, {
    String? name,
    String? email,
    String? password,
  }) async {
    try {
      Response response = await Dio()
          .post("${JobFinderConstants.BaseUrl}/auth/register/", data: {
        "password": password,
        "email": email,
        "name": name,
      });

      // Check if the response contains a token
      if (response.data != null && response.data['token'] != null) {
        String token = response.data['token'];
        bool status = response.data['status'];
        int userId = response.data['data']['id'];

        String nameInResponse = response.data['data']['name'];
        profName=nameInResponse;

        // Do something with the token, e.g., store it or use it for authentication
        print('Token: $token');
        print('name: $nameInResponse');

        SharedPreferences userSharedPreference =
            await SharedPreferences.getInstance();
        userSharedPreference.setInt('userId', userId);
        userSharedPreference.setString('token', token);
        userSharedPreference.setBool('status', status);
      } else {
        // Handle the case where the token is not present in the response
        print('Token not found in the response');
      }

      emit(RegisterSuccessfulState());
    } catch (error) {
      // Handle errors
      print(error);
    }
  }

  Future<void> loginUser(
    context, {
    String? email,
    String? password,
  }) async {
    try {
      Response response =
          await Dio().post("${JobFinderConstants.BaseUrl}/auth/login", data: {
        "email": email,
        "password": password,
      });

      String token = response.data['token'];
      bool status = response.data['status'];
      int userId = response.data['user']['id'];

      SharedPreferences userSharedPreference =
          await SharedPreferences.getInstance();

      userSharedPreference.setInt('userId', userId);
      userSharedPreference.setString('token', token);
      userSharedPreference.setBool('status', status);

      print(response.data['status']);
      print(response.data['user']['email']);
      profName=response.data['user']['name'];
      emit(LoginSuccessfulState());
    } catch (error) {
      // Handle errors
      print(error);
      emit(LoginFailedState());
    }
  }

  String? token;
  int? userId;
  bool? status;

  void GettingUserData() async {
    SharedPreferences userData = await SharedPreferences.getInstance();
    token = userData.getString('token');
    status = userData.getBool('status');
    userId = userData.getInt('userId');
    emit(GettingUserDataSuccessfully());
  }

  Future<void> gettingNotification(
    context,
  ) async {
    try {
      Response response = await Dio().get(
        "${JobFinderConstants.BaseUrl}/notification/1",
      );

      String comp_name = response.data['data']['comp_name'];
      bool status = response.data['status'];

      print(comp_name);
      print(status);

      emit(GettingNotificationSuccess());
    } catch (error) {
      // Handle errors

      print(error);
      emit(GettingNotificationFailed());
    }
  }

  Future<void> suggestJob(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingSugesstedJobSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/jobs/sugest/2",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        Map<String,dynamic> data = response.data['data'];
        suggestedJobs=data.values.toList();
        bool status = response.data['status'];

         print(suggestedJobs);
         print(status);



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }
}
