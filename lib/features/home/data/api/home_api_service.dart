
import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_constants.dart';
import 'package:doc_app/features/home/data/api/home_api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../models/specialty_response_model.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService{

  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specialty)
  Future<SpecialtyResponseModel> getAllSpecialty();
}