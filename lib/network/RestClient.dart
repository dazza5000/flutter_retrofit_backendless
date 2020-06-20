import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'User.dart';

part 'RestClient.g.dart';

@RestApi(baseUrl: "https://api.backendless.com/92B7C50B-C631-4CDE-908F-7E990199E53C/0F7EC399-8C99-4B87-A898-E660D66C9081/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/users/register")
  Future<User> registerUser(@Body() User user);
}