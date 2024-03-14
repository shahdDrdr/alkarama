import 'package:dartz/dartz.dart';
import 'package:task_P2/core/data/models/clup.dart';
import 'package:task_P2/core/data/models/common_response.dart';
import 'package:task_P2/core/enums/request_type.dart';
import 'package:task_P2/core/utils/network_util.dart';
class ClupRepository {
  Future<Either<String, List<Clup>>> getAllLogo() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'api/club/index',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);
        if (commonResponse.getStatus) {
          List<Clup> listinfouser = [];
          commonResponse.data!.forEach((element) {
            listinfouser.add(Clup.fromJson(element));
          });
          return Right(listinfouser);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }}