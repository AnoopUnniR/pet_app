import 'package:dio/dio.dart';

class PetImageService {
  final dio = Dio();

  Future<(String error, String imageUrl)> imageFetcherFunction() async {
    Response response;
    try {
      response = await dio.get("https://dog.ceo/api/breeds/image/random");
      if (response.statusCode == 200) {
        return ("", response.data["message"].toString());
      }
      return ("Server error. Please try again later", "");
    } catch (e) {
      return ("An error occured, Please check your internet and try again", "");
    }
  }
}
