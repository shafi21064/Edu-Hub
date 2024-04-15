import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../personalization/model/user_by_token_model.dart';
import '../../model/confirm_code_model.dart';
import '../../model/login_model.dart';
import '../../model/logout_model.dart';
import '../../model/password_confirm_model.dart';
import '../../model/password_forgot_model.dart';
import '../../model/resend_code_model.dart';
import '../../model/signup_model.dart';

class AuthRepository extends GetxController {
  // Future<LoginResponse> loginWithEmail(String email, String password,
  //     bool rememberMe, BuildContext context) async {
  //   var postBody = jsonEncode({
  //     "email": email,
  //     "password": password,
  //     "remember_me": rememberMe,
  //     "version": "2.0.0",
  //   });
  //
  //   Uri url = Uri.parse("${ENDP.LOGIN}");
  //   final response = await http.post(url,
  //       headers: {
  //         "Accept": "*/*",
  //         "Content-Type": "application/json",
  //        // "App-Language": app_language.$,
  //       },
  //       body: postBody);
  //   print(response.body.toString());
  //   return loginResponseFromJson(response.body);
  // }
  //
  // Future<LoginResponse> loginWithOtp(
  //     String phone, BuildContext context) async {
  //   var postBody = jsonEncode({
  //     "email": phone,
  //     "version": "2.0.0",
  //   });
  //
  //   Uri url = Uri.parse("${AppConfig.BASE_URL}/send-login-otp");
  //   final response = await http.post(url,
  //       headers: {
  //         "Accept": "*/*",
  //         "Content-Type": "application/json",
  //        // "App-Language": app_language.$,
  //       },
  //       body: postBody);
  //   print(response.body);
  //   return loginResponseFromJson(response.body);
  // }

  static const String baseUrl = 'https://appbeta.kireibd.com/api/v2';

  Future<LoginResponse> getSocialLoginResponse(
    String? socialProvider,
    String? name,
    String? email,
    String? provider, {
    accessToken = "",
  }) async {
    email = email ?? "";

    var postBody = jsonEncode({
      "name": name,
      "email": email,
      "provider": provider,
      "social_provider": socialProvider,
      "access_token": "$accessToken"
    });

    Uri url = Uri.parse("$baseUrl/auth/social-login");
    final response = await http.post(url,
        headers: {
          "Content-Type": "application/json",
          //"App-Language": app_language.$,
        },
        body: postBody);
    var responseBody = jsonDecode(response.body);
    return LoginResponse.fromJson(responseBody);
  }

  Future<LogoutResponse> getLogoutResponse() async {
    Uri url = Uri.parse("$baseUrl/auth/logout");
    final response = await http.get(
      url,
      headers: {
         //"Authorization": "Bearer ${access_token.$}",
        //"App-Language": app_language.$,
      },
    );

    print(response.body);

    return logoutResponseFromJson(response.body);
  }

//   Future<SignupResponse> getSignupResponse(
//     String name,
//     String emailOrPhone,
//     String password,
//     String passwordConfirmation,
//     String registerBy,
//     BuildContext context,
//   ) async {
//     var postBody = jsonEncode({
//       "name": name,
//       "email_or_phone": emailOrPhone,
//       "password": password,
//       "password_confirmation": passwordConfirmation,
//       "register_by": registerBy,
//       "version":
//           "2.0.0",
//     });
//
//     Uri url = Uri.parse("${AppConfig.BASE_URL}/auth/signup");
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//     print(response.body);
//     return signupResponseFromJson(response.body);
//   }
//
//   Future<SignupResponse> getSignupOtpResponse(
//       String phone, BuildContext context) async {
//     var postBody = jsonEncode({
//       "email": phone,
//       "version":
//           "2.0.0",
//     });
//     print(postBody);
//     Uri url = Uri.parse("${AppConfig.BASE_URL}/send-signup-otp");
//     print(url);
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//     print(response.body);
//     return signupResponseFromJson(response.body);
//   }
//
//   Future<ResendCodeResponse> getResendCodeResponse(int phone) async {
//     var postBody = jsonEncode({
//       "email": phone,
//     });
//
//     Uri url = Uri.parse("${AppConfig.BASE_URL}/send-login-otp");
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//
//     return resendCodeResponseFromJson(response.body);
//   }
//
//   Future<ConfirmCodeResponse> getConfirmCodeResponse(
//       int userId, String verificationCode) async {
//     var postBody = jsonEncode(
//         {"user_id": "$userId", "verification_code": verificationCode});
//
//     Uri url = Uri.parse("${AppConfig.BASE_URL}/auth/confirm_code");
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//
//     return confirmCodeResponseFromJson(response.body);
//   }
//
//   Future<SignupResponse> getSignUpOtpConfirmCodeResponse(
//       String phone, String verificationCode) async {
//     var postBody = jsonEncode({"email": phone, "otp_code": verificationCode});
//
//     Uri url = Uri.parse("${AppConfig.BASE_URL}/verify-signup-otp");
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//     print(response.body);
//     return signupResponseFromJson(response.body);
//   }
//
//   Future<LoginResponse> getLogInOtpConfirmCodeResponse(
//       String phone, String verificationCode) async {
//     var postBody = jsonEncode({"email": phone, "otp_code": verificationCode});
//
//     Uri url = Uri.parse("${AppConfig.BASE_URL}/verify-login-otp");
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//     print(response.body);
//     return loginResponseFromJson(response.body);
//   }
//
//   Future<PasswordForgetResponse> getPasswordForgetResponse(
//       String emailOrPhone) async {
//     var postBody = jsonEncode({"email": emailOrPhone});
//
//     print(postBody);
//     Uri url = Uri.parse(
//       "${AppConfig.BASE_URL}/send-reset-otp",
//     );
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//
//     print(response.body.toString());
//
//     return passwordForgetResponseFromJson(response.body);
//   }
//
//   Future<PasswordConfirmResponse> getPasswordConfirmResponse(
//       String verificationCode, String phone) async {
//     var postBody = jsonEncode({"otp_code": verificationCode, "email": phone});
//     print(postBody);
//
//     Uri url = Uri.parse(
//       "${AppConfig.BASE_URL}/verify-reset-otp",
//     );
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//
//     print(response.body.toString());
//
//     return passwordConfirmResponseFromJson(response.body);
//   }
//
//   // Future<CartAddResponse> getConfirmReset(
//   //     @required String verificationCode,
//   //     @required String phone,
//   //     @required bool otpReset,
//   //     @required String password) async {
//   //   var postBody = jsonEncode({
//   //     "otp_code": verificationCode,
//   //     "email": phone,
//   //     "otp_reset": "$otpReset",
//   //     "password": password
//   //   });
//   //   print(postBody);
//   //
//   //   Uri url = Uri.parse(
//   //     "${AppConfig.BASE_URL}/auth/password/confirm_reset",
//   //   );
//   //   final response = await http.post(url,
//   //       headers: {
//   //         "Content-Type": "application/json",
//   //         "App-Language": app_language.$,
//   //       },
//   //       body: postBody);
//   //
//   //   print(response.body.toString());
//   //
//   //   return cartAddResponseFromJson(response.body);
//   // }
//
//   Future<ResendCodeResponse> getPasswordResendCodeResponse(
//       String emailOrCode, String verifyBy) async {
//     var postBody =
//         jsonEncode({"email_or_code": emailOrCode, "verify_by": verifyBy});
//
//     Uri url = Uri.parse("${AppConfig.BASE_URL}/auth/password/resend_code");
//     final response = await http.post(url,
//         headers: {
//           "Content-Type": "application/json",
//           //"App-Language": app_language.$,
//         },
//         body: postBody);
//
//     return resendCodeResponseFromJson(response.body);
//   }
//
//   // Future<UserByTokenResponse> getUserByTokenResponse() async {
//   //   var postBody = jsonEncode({"access_token": "${accessToken.$}"});
//   //   Uri url = Uri.parse("${AppConfig.BASE_URL}/get-user-by-access_token");
//   //   final response = await http.post(url,
//   //       headers: {
//   //         "Content-Type": "application/json",
//   //         "App-Language": app_language.$,
//   //       },
//   //       body: postBody);
//   //
//   //   return userByTokenResponseFromJson(response.body);
//   // }
}
