//@dart=2.9
import 'package:app_familyfinancial/src/app/repositories/cash_flow_type_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();
  final repository = CashFlowTypeRepository(dio);

  test('should return a CashFlowType list', () async {
    //
    //arrange
    when(dio.get(any)).thenAnswer((_) async => Response(
        data: cashFlowTypesMock, requestOptions: RequestOptions(path: '')));

    //act
    final list = await repository.fetchAll();

    //assert
   expect(list, hasLength(cashFlowTypesMock.length));
  });
}

List<Map<String, Object>> cashFlowTypesMock = [
  {
    "id": "a2948e28-fea2-40bb-86cf-8bfc64438da9",
    "code": 1,
    "name": "Salário",
    "description": "Salário mensal",
    "type": "Revenue",
    "fixedFlow": false,
    "fixedValue": 0.00,
    "createdBy": "leogui.moritz@gmail.com",
    "lastModifiedBy": "leogui.moritz@gmail.com",
    "createDate": "2022-09-15T00:00:00",
    "lastModifiedDate": "2022-09-15T00:00:00"
  },
  {
    "id": "39465330-77f5-4f31-b0ad-7f0fc060bb4b",
    "code": 2,
    "name": "PLR",
    "description": "PLR Empresa",
    "type": "Revenue",
    "fixedFlow": false,
    "fixedValue": 0.00,
    "createdBy": "leogui.moritz@gmail.com",
    "lastModifiedBy": "leogui.moritz@gmail.com",
    "createDate": "2022-09-20T00:00:00",
    "lastModifiedDate": "2022-09-20T00:00:00"
  },
  {
    "id": "2f9f2e8e-7281-4fd2-b305-721bad6a420f",
    "code": 5,
    "name": "13º Salário",
    "description": "Décimo Terceiro Salário Dividido em Duas Partes",
    "type": "Revenue",
    "fixedFlow": false,
    "fixedValue": 0.00,
    "createdBy": "leogui.moritz@gmail.com",
    "lastModifiedBy": "leogui.moritz@gmail.com",
    "createDate": "2022-09-20T00:00:00",
    "lastModifiedDate": "2022-09-20T00:00:00"
  },
  {
    "id": "a3625fe3-f5f6-44c5-991a-9d75fc431e61",
    "code": 4,
    "name": "Premiação",
    "description": "Entradas resultantes de premiações da empresa/organização",
    "type": "Revenue",
    "fixedFlow": false,
    "fixedValue": 0.00,
    "createdBy": "leogui.moritz@gmail.com",
    "lastModifiedBy": "leogui.moritz@gmail.com",
    "createDate": "2022-09-20T00:00:00",
    "lastModifiedDate": "2022-09-20T00:00:00"
  }
];
