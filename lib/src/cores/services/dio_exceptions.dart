// import '../../src.dart';

// class DioExceptions {
//   static Response handleError(DioException exception) {
//     if (exception.error is SocketException) {
//       throw Exception('No Internet Connection');
//     }

//     switch (exception.type) {
//       case DioExceptionType.connectionTimeout:
//         throw Exception('Connection Timeout');
//       case DioExceptionType.sendTimeout:
//         throw Exception('Send Timeout');
//       case DioExceptionType.receiveTimeout:
//         throw Exception('Receive Timeout');
//       case DioExceptionType.badResponse:
//         // Handle different status codes here
//         if (exception.response != null) {
//           return exception.response!;
//         }
//         throw Exception(
//             'Received invalid status code: ${exception.response?.statusCode}');
//       case DioExceptionType.cancel:
//         throw Exception('Request cancelled');
//       case DioExceptionType.unknown:
//         throw Exception('Something went wrong: ${exception.message}');
//       default:
//         throw Exception('Unexpected error: ${exception.message}');
//     }
//   }
// }
