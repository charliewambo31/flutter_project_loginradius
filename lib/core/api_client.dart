import 'package:dio/dio.dart';
//import 'package:flutter_project_loginradius/utils/constants.dart';

 
// class ApiClient {
//   final Dio _dio = Dio();

//   Future<dynamic> registerUser(Map<String, dynamic>? data) async {
//     try {
//       Response response = await _dio.post(
//           //'https://api.loginradius.com/identity/v2/auth/register',
//           'https://calculatrice-immobiliere.ca/en/accounts/login_view',
//           data: data,
//           //queryParameters: {'apikey': ApiSecret.apiKey},
//          // options: Options(headers: {'X-LoginRadius-Sott': ApiSecret.sott})
//           );
//       return response.data;
//     // ignore: deprecated_member_use
//     } on DioError catch (e) {
//       return e.response!.data;
//     }
//   }

//   Future<dynamic> login(String email, String password) async {
//     try {
//       Response response = await _dio.post(
//        //'https://api.loginradius.com/identity/v2/auth/login',
//         'https://calculatrice-immobiliere.ca/en/accounts/login_view',
//         data: {
//           'email': email,
//           'password': password,
//         },
//         //queryParameters: {'apikey': ApiSecret.apiKey},
//       );
//       return response.data;
//     // ignore: deprecated_member_use
//     } on DioError catch (e) {
//       return e.response!.data;
//     }
//   }

//   Future<dynamic> getUserProfileData(String accessToken) async {
//     try {
//       Response response = await _dio.get(
//         //'https://api.loginradius.com/identity/v2/auth/account',
//         'https://calculatrice-immobiliere.ca/en/accounts/login_view',
//        // queryParameters: {'apikey': ApiSecret.apiKey},
//         options: Options(
//           headers: {'Authorization': 'Bearer $accessToken'},
//         ),
//       );
//       return response.data;
//     // ignore: deprecated_member_use
//     } on DioError catch (e) {
//       return e.response!.data;
//     }
//   }

//   Future<dynamic> updateUserProfile({
//     required String accessToken,
//     required Map<String, dynamic> data,
//   }) async {
//     try {
//       Response response = await _dio.put(
//         //'https://api.loginradius.com/identity/v2/auth/account',
//         'https://calculatrice-immobiliere.ca/en/accounts/login_view',
//         data: data,
//         //#queryParameters: {'apikey': ApiSecret.apiKey},
//         options: Options(
//           headers: {'Authorization': 'Bearer $accessToken'},
//         ),
//       );
//       return response.data;
//     // ignore: deprecated_member_use
//     } on DioError catch (e) {
//       return e.response!.data;
//     }
//   }

//    Future<dynamic> logout(String accessToken) async {
//      try {
//        Response response = await _dio.get(
//          'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
//          queryParameters: {'apikey': ApiSecret.apiKey},
//          options: Options(
//            headers: {'Authorization': 'Bearer $accessToken'},
//          ),
//        );
//        return response.data;
//      // ignore: deprecated_member_use
//      } on DioError catch (e) {
//        return e.response!.data;
//      }
//    }
// }




class ApiClient {
  final Dio _dio = Dio();

  Future<dynamic> registerUser(Map<String, dynamic>? data) async {
    try {
      Response response = await _dio.post(
        'https://calculatrice-immobiliere.ca/en/accounts/register?email=charlie@gmail.com&Vierge01#',
        data: data,
      );
      return response.data;
    // ignore: deprecated_member_use
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<dynamic> login(String email, String password) async {
    try {
      Response response = await _dio.post(
        'https://calculatrice-immobiliere.ca/en/accounts/login?email=charlie@gmail.com&Vierge01#',
        data: {
          'email': email,
          'password': password,
        },
      );
      return response.data;
    // ignore: deprecated_member_use
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<dynamic> getUserProfileData(String accessToken) async {
    try {
      Response response = await _dio.get(
        'https://calculatrice-immobiliere.ca/en/accounts/login_view?email=charlie@gmail.com&Vierge01#',
        options: Options(
          headers: {'Authorization': 'Bearer $accessToken'},
        ),
      );
      return response.data;
    // ignore: deprecated_member_use
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<dynamic> updateUserProfile({
    required String accessToken,
    required Map<String, dynamic> data,
  }) async {
    try {
      Response response = await _dio.put(
        'https://calculatrice-immobiliere.ca/en/accounts/login_view?email=charlie@gmail.com&Vierge01#',
        data: data,
        options: Options(
          headers: {'Authorization': 'Bearer $accessToken'},
        ),
      );
      return response.data;
    // ignore: deprecated_member_use
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<dynamic> logout(String accessToken) async {
    try {
      Response response = await _dio.get(
        'https://calculatrice-immobiliere.ca/en/accounts/access_token/InValidate',
        options: Options(
          headers: {'Authorization': 'Bearer $accessToken'},
        ),
      );
      return response.data;
    // ignore: deprecated_member_use
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}